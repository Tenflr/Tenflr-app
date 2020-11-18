part of 'connectivity_and_time_bloc.dart';

@freezed
abstract class ConnectivityAndTimeState implements _$ConnectivityAndTimeState {
  const ConnectivityAndTimeState._();
  factory ConnectivityAndTimeState({
    @required bool isConnected,
    @required bool isSyncedTime,
  }) = _ConnectivityAndTimeState;
  factory ConnectivityAndTimeState.initial() => ConnectivityAndTimeState(
        isConnected: true,
        isSyncedTime: true,
      );
  
}
