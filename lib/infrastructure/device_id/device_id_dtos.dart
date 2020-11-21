import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/valid_objects.dart';
import '../../domain/core/value_object.dart';
import '../../domain/device_id/device_id.dart';

part 'device_id_dtos.freezed.dart';
part 'device_id_dtos.g.dart';

@immutable
@freezed
abstract class DeviceIdDto implements _$DeviceIdDto {
  const DeviceIdDto._();
  const factory DeviceIdDto({
    @required String id,
    @required String email,
    @required String tel,
    @required String dName,
    @required String dVer,
    @required bool isTelPk, // isTelephonePrimaryKey
  }) = _DeviceIdDto;

  factory DeviceIdDto.fromDomain(DeviceId deviceId) => DeviceIdDto(
        id: deviceId.id.getOrCrash(),
        isTelPk: deviceId.isTelPk,
        email: deviceId.email.getOrCrash(),
        tel: deviceId.email.getOrCrash(),
        dName: deviceId.dName,
        dVer: deviceId.dVer,
      );

  DeviceId toDomain() => DeviceId(
        id: UniqueId.fromUniqueString(id),
        email: EmailAddress(email),
        tel: ValidPhoneNumber(tel),
        dName: dName,
        isTelPk: isTelPk,
        dVer: dVer,
      );

  factory DeviceIdDto.fromFirestore(DocumentSnapshot doc) =>
      DeviceIdDto.fromJson(doc.data);
  factory DeviceIdDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceIdDtoFromJson(json);
}
