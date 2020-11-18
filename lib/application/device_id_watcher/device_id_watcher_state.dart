part of 'device_id_watcher_bloc.dart';

@freezed
abstract class DeviceIdWatcherState with _$DeviceIdWatcherState {
  const factory DeviceIdWatcherState({
    @required UniqueId deviceId,
    @required EmailAddress email,
    @required ValidPhoneNumber tel,
    @required Option<Either<AuthFailure, DeviceId>> successOrFailureOption,
  }) = _DeviceIdWatcherState;
  factory DeviceIdWatcherState.empty() => DeviceIdWatcherState(
        deviceId: UniqueId(),
        email: EmailAddress(''),
        tel: ValidPhoneNumber(''),
        successOrFailureOption: none(),
      );
  // const factory DeviceIdWatcherState.loadComplete({ @required DeviceId deviceId}) = _Complete;
}
