import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/auth_failure.dart';
import '../../domain/core/valid_objects.dart';
import '../../domain/core/value_object.dart';
import '../../domain/device_id/device_id.dart';
import '../../domain/device_id/i_device_id_facade.dart';

part 'device_id_watcher_bloc.freezed.dart';
part 'device_id_watcher_event.dart';
part 'device_id_watcher_state.dart';

@injectable
class DeviceIdWatcherBloc
    extends Bloc<DeviceIdWatcherEvent, DeviceIdWatcherState> {
  final IDeviceIDFacade _idRepository;
  DeviceIdWatcherBloc(this._idRepository)
      : super( DeviceIdWatcherState.empty());

  StreamSubscription subscription;

  @override
  Stream<DeviceIdWatcherState> mapEventToState(
    DeviceIdWatcherEvent event,
  ) async* {
    yield* event.map(
      watchDeviceId: (e) async* {
        subscription = _idRepository.watchDeviceId().listen(
            (Either<AuthFailure, DeviceId> failureOrDeviceId) => add(
                DeviceIdWatcherEvent.loadComplete(
                    failureOrDeviceId: failureOrDeviceId)));
      },
      loadComplete: (e) async* {
        yield e.failureOrDeviceId.fold(
          (AuthFailure failure) =>
              state.copyWith(successOrFailureOption: some(left(failure))),
          (DeviceId deviceId) => state.copyWith(
            deviceId: deviceId.id,
            email: deviceId.email,
            tel: deviceId.tel,
          ),
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
