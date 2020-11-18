part of 'phone_init_bloc.dart';

@freezed
@immutable
abstract class PhoneInitState with _$PhoneInitState {
  const factory PhoneInitState.initial() = _Initial;
  const factory PhoneInitState.loading() = _Loading;
  const factory PhoneInitState.completed({
    @required Map<String, dynamic> info,
  }) = _Completed;
}
