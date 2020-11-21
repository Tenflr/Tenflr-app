import '../core/auth_failure.dart';
import '../core/valid_objects.dart';
import '../core/value_object.dart';
import 'device_id.dart';
import '../user/user.dart';
import '../user_address/user_address.dart';
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
