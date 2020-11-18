import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:tenflrpay/domain/core/user_search_failure.dart';
import 'package:tenflrpay/domain/database/i_database_repository_facade.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/foundation.dart';

part 'firestore_search_event.dart';
part 'firestore_search_state.dart';
part 'firestore_search_bloc.freezed.dart';

@injectable
class FirestoreSearchBloc
    extends Bloc<FirestoreSearchEvent, FirestoreSearchState> {
  final IDatabaseRepositoryFacade _searchRepo;

  FirestoreSearchBloc(this._searchRepo): super(const FirestoreSearchState.searchEmpty());

  @override
  Stream<Transition<FirestoreSearchEvent, FirestoreSearchState>>
      transformEvents(
          Stream<FirestoreSearchEvent> events,
          Stream<Transition<FirestoreSearchEvent, FirestoreSearchState>>
                  Function(FirestoreSearchEvent event)
              transitionFn) {
    return events
        .debounceTime(const Duration(milliseconds: 500))
        .switchMap(transitionFn);
  }

  @override
  void onTransition(
      Transition<FirestoreSearchEvent, FirestoreSearchState> transition) {
    print(transition);
    super.onTransition(transition);
  }


  @override
  Stream<FirestoreSearchState> mapEventToState(
    FirestoreSearchEvent event,
  ) async* {
    yield* event.map(
      searchTermChanged: (e) async* {
        if (e.query.isNotEmpty) {
          yield const FirestoreSearchState.searchLoading();
          _searchRepo.searchUsers(e.query).then(
              (Either<UserSearchFailure, KtList<User>> failureOrUsers) => add(
                  FirestoreSearchEvent.searchResultCompleted(
                      failureOrUsers: failureOrUsers)));
        }
      },
      searchResultCompleted: (e) async* {
        yield e.failureOrUsers.fold(
          (UserSearchFailure l) =>
              FirestoreSearchState.searchFailure(failure: l),
          (KtList<User> r) => FirestoreSearchState.searchSuccessfull(users: r),
        );
      },
    );
  }
}
