import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/valid_objects.dart';
import '../core/value_object.dart';

part 'user_address.freezed.dart';

@freezed
abstract class UserAddress implements _$UserAddress {
  const UserAddress._();
  const factory UserAddress({
    @required final UniqueId id,
    @required final ValidCity city,
    @required final ValidAddress address,
    @required final ValidState state,
    @required final ValidZipCode zipcode,
  }) = _UserAddress;

  factory UserAddress.empty() => UserAddress(
        id: UniqueId(),
        city: ValidCity(''),
        address: ValidAddress(''),
        state: ValidState(''),
        zipcode: ValidZipCode(''),
      );

  // Option<ValueFailure<dynamic>> get failureOption {
  //   return phoneNumber.failureOrUnit.fold((l) => some(l), (r) => none());
  // }
}
