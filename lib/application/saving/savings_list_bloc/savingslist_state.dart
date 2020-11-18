part of 'savingslist_bloc.dart';
@freezed 
@immutable
abstract class SavingsListState with _$SavingsListState{
  const factory SavingsListState.initial() = _Initial;
  const factory SavingsListState.loading() = _Loading;
  const factory SavingsListState.loadFailure({@required SavingsFailure failure }) = _LoadFailure;
  const factory SavingsListState.loadComplete( { @required KtList<Savings> savings}) = _ListLoaded;
}