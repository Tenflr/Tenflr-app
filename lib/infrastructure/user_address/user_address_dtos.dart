import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/domain/core/valid_objects.dart';
import 'package:tenflrpay/domain/user_address/user_address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_address_dtos.freezed.dart';
part 'user_address_dtos.g.dart';

@freezed
abstract class UserAddressDto implements _$UserAddressDto {
  const UserAddressDto._();
  const factory UserAddressDto({
    @required final String id,
    @required final String city,
    @required final String address,
    @required final String state,
    @required final String zipcode,
  }) = _UserAddressDto;

  factory UserAddressDto.fromJson(Map<String, dynamic> data) =>
      _$UserAddressDtoFromJson(data);
  factory UserAddressDto.fromDomain(UserAddress userAddress) {
    return UserAddressDto(
      id: userAddress.id.getOrCrash(),
      address: userAddress.address.getOrCrash(),
      city:  userAddress.city.getOrCrash(),
      state:  userAddress.state.getOrCrash(),
      zipcode:  userAddress.zipcode.getOrCrash(),
    );
  }

  UserAddress toDomain() {
    return UserAddress(
      id: UniqueId.fromUniqueString(id),
      address: ValidAddress(address),
      city: ValidCity(city),
      state: ValidState(state),
      zipcode: ValidZipCode(zipcode),
    );
  }
}
