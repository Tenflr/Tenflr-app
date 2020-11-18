part of 'main_views_bloc.dart';

@freezed
@immutable
abstract class MainViewsEvent with _$MainViewsEvent {
  const factory MainViewsEvent.homePage() = _HomePageE;

  //savings
  const factory MainViewsEvent.savingsPage() = _SavingsPageE;
  const factory MainViewsEvent.savingsInitPage() = _SavingsInitPageE;
  const factory MainViewsEvent.savingsDetailPage({
    @required Savings savings,
    @required int duration,
  }) = _SavingsDetailPageE;
  const factory MainViewsEvent.createNewSavingsPage() = _CreateNewSavingsPageE;

  //budgets
  const factory MainViewsEvent.budgetPage() = _BudgetPageE;
  const factory MainViewsEvent.budgetInitPage() = _BudgetInitPageE;
  const factory MainViewsEvent.budgetAddPage() = _BudgetAddPageE;
  const factory MainViewsEvent.createNewBudgetPage() = _CreateNewBudgetPage;
  const factory MainViewsEvent.budgetDetailPage({@required Budget budget}) =
      _BudgetDetailPageE;
  const factory MainViewsEvent.sendBudgetGiftPage() = _SendBudgetGiftPageE;

  //trusted pay
  const factory MainViewsEvent.trustedPayPage({@required String pin}) =
      _TrustedPayPageE;
  const factory MainViewsEvent.makeNewTrustedPaymentPage() =
      _MakeNewTrustedPaymentPageE;
  const factory MainViewsEvent.trustedPayAuthCancel() =
      _TrustedPayAuthCancel;


  // QuickPayment 
  const factory MainViewsEvent.quickPaymentOverView() = _QuickPaymentOverView;
}
