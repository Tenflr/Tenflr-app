import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/valid_objects.dart';
import '../../domain/core/value_object.dart';
import '../../domain/user/user.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();
  const factory UserDto({
    @required final String id,
    @required final bool isNewUser,
    @required final String photoUrl,
    @required final String displayName,
    @required final String email,
    @required final String providerId,
    @required final String phoneNumber,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> data) =>
      _$UserDtoFromJson(data);
  factory UserDto.fromDomain(User user) {
    return UserDto(
      id:  user.id.getOrCrash(),
      isNewUser: user.isNewUser,
      photoUrl: user.photoUrl,
      displayName: user.displayName.getOrCrash(),
      email: user.email.getOrCrash(),
      phoneNumber: user.phoneNumber.getOrCrash(),
      providerId: user.providerId,
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id),
      isNewUser: isNewUser,
      photoUrl: photoUrl,
      displayName: ValidNames(displayName),
      email: EmailAddress(email),
      phoneNumber: ValidPhoneNumber(phoneNumber),
      providerId: providerId,
    );
  }
}
