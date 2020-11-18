// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:college_plan/infrastructure/repositories/firestore_service.dart';
// import 'package:college_plan/infrastructure/user/user_dtos.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:injectable/injectable.dart';

// abstract class AuthBase {
//   Future<UserDto> signInWithGoogle();

//   Future<bool> isSignedIn();

//   Future<UserDto> getUser();

//   // Stream<User> get onAuthStateChanged;

//   Future<void> signOut();
//   // Future<void> verifyPhone(BuildContext context, {String phoneNumber});

//   // Future<User> simSignIn(AuthCredential authCredential);

//   Future<void> sendOtp(
//     String phoneNumber,
//     Duration timeOut,
//     PhoneVerificationFailed phoneVerificationFailed,
//     PhoneVerificationCompleted phoneVerificationCompleted,
//     PhoneCodeSent phoneCodeSent,
//     PhoneCodeAutoRetrievalTimeout autoRetrievalTimeout,
//   );

//   Future<UserDto> verifyAndLogin(String verificationId, String smsCode);
// }

// @injectable
// class UserRepository implements AuthBase {
//   final FirebaseAuth _firebaseAuth;
//   final GoogleSignIn _googleSignIn;
//   final Firestore _databaseReference;
//   UserRepository(
//       {FirebaseAuth firebaseAuth,
//       GoogleSignIn googleSignin,
//       Firestore firestore})
//       : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
//         _databaseReference = firestore ?? Firestore.instance,
//         _googleSignIn = googleSignin ?? GoogleSignIn();

//   // FirebaseUser to User Mapper
//   Future<UserDto> _userFromFirebase(AuthResult authResult,
//       {String providerID}) async {
//     // if no user was returned
//     if (authResult.user == null) {
//       return null;
//     }

//     // if a new user is returned: We need to log additional user info depending on providerId
//     else if (authResult.additionalUserInfo.isNewUser) {
//       // if user authenticated with phoneNumber: Then we need to request Name, email, photo, etc
//       if (providerID == 'google') {
//         // if user authenticated with google sign: Then we need to request momo number
//         return UserDto(
//           isNewUser: true,
//           uid: authResult.user.uid,
//           displayName: authResult.user.displayName,
//           email: authResult.user.email,
//           photoUrl: authResult.user.photoUrl,
//         );
//       }
//       // we return a user with isNewUser flag true which we will use to tricker more info state based on providerId

//       else {
//         return UserDto(
//           isNewUser: true,
//           uid: authResult.user.uid,
//           phoneNumber: authResult.user.phoneNumber,
//         );
//       }
//     }
//     // if user in not new : Then let collect user info form firestore.
//     else {
//       return await FirestoreService.instance.userData(authResult.user.uid);
//     }
//   }

// // sign in with google
//   @override
//   Future<User> signInWithGoogle() async {
//     final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
//     final GoogleSignInAuthentication googleAuth =
//         await googleUser.authentication;

//     final AuthCredential credential = GoogleAuthProvider.getCredential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     final AuthResult authResult =
//         await _firebaseAuth.signInWithCredential(credential);

//     return _userFromFirebase(authResult, providerID: "google");
//   }

//   @override
//   Future<bool> isSignedIn() async {
//     final currentUser = await _firebaseAuth.currentUser();
//     return currentUser != null;
//   }

//   // Get current user
//   @override
//   Future<User> getUser() async {
//     FirebaseUser user = await _firebaseAuth.currentUser();
    // User _user = await FirestoreService.instance.userData(user.uid);

//     print(_user);
//     return _user;
//   }

// //auth change user stream
//   // Stream<User> get user {
//   //   return _firebaseAuth.onAuthStateChanged
//   //       .map((FirebaseUser user) async {return await getUser()});// _userFromFirebase(user));
//   // }

//   // sign out
//   @override
//   Future<void> signOut() async {
//     return Future.wait([
//       _firebaseAuth.signOut(),
//       _googleSignIn.signOut(),
//     ]);
//   }

//   // @override
//   // Stream<User> get onAuthStateChanged {
//   //   return _firebaseAuth.onAuthStateChanged.map(_userFromFirebase);
//   // }

//   // phone auth ver-2
//   @override
//   Future<void> sendOtp(
//       String phoneNumber,
//       Duration timeOut,
//       PhoneVerificationFailed phoneVerificationFailed,
//       PhoneVerificationCompleted phoneVerificationCompleted,
//       PhoneCodeSent phoneCodeSent,
//       PhoneCodeAutoRetrievalTimeout autoRetrievalTimeout) async {
//     _firebaseAuth.verifyPhoneNumber(
//         phoneNumber: phoneNumber,
//         timeout: timeOut,
//         verificationCompleted: phoneVerificationCompleted,
//         verificationFailed: phoneVerificationFailed,
//         codeSent: phoneCodeSent,
//         codeAutoRetrievalTimeout: autoRetrievalTimeout);
//   }

//   @override
//   Future<User> verifyAndLogin(String verificationId, String smsCode) async {
//     AuthCredential authCredential = PhoneAuthProvider.getCredential(
//         verificationId: verificationId, smsCode: smsCode);

//     AuthResult authResult =
//         await _firebaseAuth.signInWithCredential(authCredential);

//     return _userFromFirebase(authResult, providerID: "phone");
//   }
// }
