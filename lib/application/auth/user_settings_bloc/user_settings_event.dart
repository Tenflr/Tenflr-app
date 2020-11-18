part of 'user_settings_bloc.dart';

@freezed
@immutable
abstract class UserSettingsEvent with _$UserSettingsEvent {
  const factory UserSettingsEvent.initialize() =
      _Initialized;
       const factory UserSettingsEvent.addressChanged(
      {@required ValidAddress address}) = _AddressChangedE;
  const factory UserSettingsEvent.stateChanged({@required ValidState state}) =
      _StateChangedE;
  const factory UserSettingsEvent.zipcodeChanged(
      {@required ValidZipCode zipCode}) = _ZipCodeChangedE;
  const factory UserSettingsEvent.cityChanged({@required ValidCity city}) =
      _CityChangedE;
      const factory UserSettingsEvent.emailChanged({@required EmailAddress email}) =
      _EmailChangedE;
}
