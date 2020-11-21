import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failures.dart';
import '../core/valid_objects.dart';
import '../core/value_object.dart';

part 'user.freezed.dart';

@immutable
@freezed
abstract class User implements _$User {
  const User._();
  const factory User({
    @required final UniqueId id,
    @required final bool isNewUser,
    @required final String photoUrl,
    @required final String providerId,
    @required final ValidNames displayName,
    @required final EmailAddress email,
    @required final ValidPhoneNumber phoneNumber,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId(),
        isNewUser: true,
        photoUrl: '',
        displayName: ValidNames(''),
        email: EmailAddress('xyz@gmail.com'),
        phoneNumber: ValidPhoneNumber(''),
        providerId: '',
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return displayName.failureOrUnit
        .andThen(phoneNumber.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
