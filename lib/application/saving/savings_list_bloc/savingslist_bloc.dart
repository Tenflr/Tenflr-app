import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

import '../../../domain/saving/i_saving_repository.dart';
import '../../../domain/saving/savings.dart';
import '../../../domain/saving/savings_failure.dart';

part 'savingslist_bloc.freezed.dart';
part 'savingslist_event.dart';
part 'savingslist_state.dart';

@injectable
class SavingsListBloc extends Bloc<SavingsListEvent, SavingsListState> {
  SavingsListBloc({@required this.savingsRepository}):super(const SavingsListState.initial());


  final ISavingsRepository savingsRepository;

  StreamSubscription subscription;
  @override
  Stream<SavingsListState> mapEventToState(
    SavingsListEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        yield const SavingsListState.loading();
        subscription?.cancel();
        subscription = savingsRepository.watchAll().listen(
            (Either<SavingsFailure, KtList<Savings>> failureOrsavings) => add(
                SavingsListEvent.loadCompleted(
                    failureOrsavings: failureOrsavings)));
      },
      loadCompleted: (e) async* {
        yield e.failureOrsavings.fold(
          (SavingsFailure l) => SavingsListState.loadFailure(failure: l),
          (KtList<Savings> r) => SavingsListState.loadComplete(savings: r),
        );
      },
    );
  }

  @override
  Future<void> close() {
    subscription?.cancel();
    return super.close();
  }
}
