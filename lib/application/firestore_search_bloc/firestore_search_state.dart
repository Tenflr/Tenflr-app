part of 'firestore_search_bloc.dart';

@freezed 
@immutable
abstract class FirestoreSearchState with _$FirestoreSearchState{
  const factory FirestoreSearchState.searchEmpty() = _SeachEmptyE;
  const factory FirestoreSearchState.searchLoading() = _SeachLoadingE;
  const factory FirestoreSearchState.searchSuccessfull({@required KtList<User> users}) = _SeachSuccessE;

  const factory FirestoreSearchState.searchFailure({ @required UserSearchFailure failure}) = _SeachFailure;
}


