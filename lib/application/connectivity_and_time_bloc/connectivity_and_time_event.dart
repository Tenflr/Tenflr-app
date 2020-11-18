part of 'connectivity_and_time_bloc.dart';

@freezed
abstract class ConnectivityAndTimeEvent with _$ConnectivityAndTimeEvent {
  const factory ConnectivityAndTimeEvent.checkInternet() = _CheckInternet;
  const factory ConnectivityAndTimeEvent.internetUp() = _InternetUP;
  const factory ConnectivityAndTimeEvent.internetDown() = _InternetDown;
  const factory ConnectivityAndTimeEvent.inSync() = _InSync;
  const factory ConnectivityAndTimeEvent.outOfSync() = _OutOfSync;
  const factory ConnectivityAndTimeEvent.checkSynchronizedTime() = _CheckSynchronizedTime;
}