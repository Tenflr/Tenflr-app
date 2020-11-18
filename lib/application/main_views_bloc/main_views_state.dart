part of 'main_views_bloc.dart';

@immutable
@freezed
abstract class MainViewsState with _$MainViewsState{
  const factory MainViewsState.homePage() = _HomePage;

// savings
  const factory MainViewsState.savingsPage() = _SavingsPage;
  const factory MainViewsState.savingsInitPage() = _SavingsInitPage;
  const factory MainViewsState.createNewSavingsPage() = _CreateNewSavingsPage;
  const factory MainViewsState.savingsDetailPage(
      {@required Savings savings, @required int duration}) = _SavingsDetailPage;

// trusted pay
  const factory MainViewsState.trustedPayUnlockPage() = _TrustedPayUnlockPage;
  const factory MainViewsState.trustedPayLockedPage() = _TrustedPayLockedPage;
  const factory MainViewsState.makeNewTrustedPaymentPage() =
      _MakeNewTrustedPaymentPage;

// budget
  const factory MainViewsState.budgetPage() = _BudgetPage;
  const factory MainViewsState.createNewBudgetPage() = _CreateNewBudget;
  const factory MainViewsState.budgetInitPage() = _BudgetInitPage;
  const factory MainViewsState.budgetAddPage() = _BudgetAddPage;
  const factory MainViewsState.budgetDetailPage({
    @required Budget budget,
  }) = _BudgetDetailPage;
  const factory MainViewsState.sendBudgetGiftPage() = _SendBudgetGiftPage;

// quick payment
  const factory MainViewsState.quickPaymentOverView() = _QuickPaymentOverViewS;
}
