import 'package:tenflrpay/domain/core/auth_failure.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/domain/device_id/device_id.dart';
import 'package:tenflrpay/domain/user/user.dart';
import 'package:tenflrpay/domain/user_address/user_address.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class IDeviceIDFacade {
  Future<Either<AuthFailure, bool>> setDeviceEmail(
      {@required DeviceId deviceId, @required EmailAddress email});
  Future<Either<AuthFailure, bool>> setDevicePhone(
      {@required DeviceId deviceId, @required ValidPhoneNumber tel});
  Future<Either<AuthFailure, bool>> updatePhoneAfterEmaileSignUp(
      {@required DeviceId deviceId, ValidPhoneNumber tel});
  Future<Either<AuthFailure, bool>> updateEmailAfterPhoneSignUp(
      {@required DeviceId deviceId, @required EmailAddress email});
  Stream<Either<AuthFailure, DeviceId>> watchDeviceId();

  Future<DeviceId> getDeviceIdFromFirebase(DeviceId deviceId);
  Future<Either<AuthFailure, DeviceId>> checkDeviceId(DeviceId deviceId);

  Future<DeviceId> getDeviceDetails(User user);
  Future<UniqueId> getDeviceIdentifier();
}
