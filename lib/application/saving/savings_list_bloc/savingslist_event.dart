part of 'savingslist_bloc.dart';

@freezed 
@immutable
abstract class SavingsListEvent with _$SavingsListEvent{
  const factory SavingsListEvent.watchAll() = _WatchAll;
  const factory SavingsListEvent.loadCompleted({ @required Either<SavingsFailure, KtList<Savings>> failureOrsavings}) = _LoadCompleted;
}



