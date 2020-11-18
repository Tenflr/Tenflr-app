part of 'device_id_watcher_bloc.dart';

@freezed
abstract class DeviceIdWatcherEvent with _$DeviceIdWatcherEvent {
  const factory DeviceIdWatcherEvent.watchDeviceId() = _WatchDeviceId;
  const factory DeviceIdWatcherEvent.loadComplete(
          {@required Either<AuthFailure, DeviceId> failureOrDeviceId}) =
      _DeviceIdLoaded;
}
