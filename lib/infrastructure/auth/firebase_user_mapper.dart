import 'package:tenflrpay/domain/core/value_object.dart';
import 'package:tenflrpay/infrastructure/user/user_dtos.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on FirebaseUser {
  UserDto toDomain(FirebaseUser user) {
    return UserDto(
      id: UniqueId.fromUniqueString(uid).getOrCrash(),
      isNewUser: true,
      providerId: '',
      photoUrl: user.photoUrl,
      displayName: null,
      // email: user.email,
      email: null,
      phoneNumber: user.phoneNumber,
      // city: null,
      // address: null,
      // state: null,
      // zipcode: null,
    );
  }
}
