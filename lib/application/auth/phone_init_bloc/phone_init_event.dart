part of 'phone_init_bloc.dart';

@freezed
@immutable
abstract class PhoneInitEvent with _$PhoneInitEvent {
  const factory PhoneInitEvent.initComplete({@required Map<String, dynamic> info}) =
      _InitPhoneE;
}
