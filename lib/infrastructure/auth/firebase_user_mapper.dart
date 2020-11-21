import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/core/value_object.dart';
import '../user/user_dtos.dart';

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
