import '../core/failures.dart';
import '../core/valid_objects.dart';
import '../core/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_id.freezed.dart';

@immutable
@freezed
abstract class DeviceId implements _$DeviceId {
  const DeviceId._();
  const factory DeviceId({
    @required UniqueId id, // device UUID
    @required EmailAddress email,
    @required ValidPhoneNumber tel,
    @required String dName, // deviceName
    @required String dVer, // deviceVersion
    @required bool isTelPk, // isTelephonePrimaryKey 
  }) = _DeviceId;

  factory DeviceId.empty() => DeviceId(
      id: UniqueId(),
      isTelPk: false,
      email: EmailAddress(''),
      tel: ValidPhoneNumber(''),
      dName: '',
      dVer: '',);

  Option<ValueFailure<dynamic>> get failureOption =>
      tel.failureOrUnit.fold((l) => some(l), (r) => none());
}
