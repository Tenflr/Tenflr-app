// import 'package:bot_toast/bot_toast.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// final GoogleAuthService googleAuthService = GoogleAuthService();

// class GoogleAuthService {
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final Firestore _db = Firestore.instance;

//   Stream<FirebaseUser> user;
//   Stream<Map<String, dynamic>> profile;
//   Stream<Map<String, dynamic>> userDoesntExit;
//   PublishSubject loading = PublishSubject();

//   GoogleAuthService() {
//     user = _auth.onAuthStateChanged;

//     profile = user.switchMap((FirebaseUser u) {
//       if (u != null) {
//         return _db
//             .collection('users')
//             .document(u.uid)
//             .snapshots()
//             .map((snap) => snap.data);
//       } else {
//         return userDoesntExit;
//       }
//     });
//   }

//   Future<FirebaseUser> googleSignIn({context}) async {
//     loading.add(true);
//     GoogleSignInAccount googleUser = await _googleSignIn.signIn();
//     GoogleSignInAuthentication googleAuth = await googleUser.authentication;

//     final AuthCredential credential = GoogleAuthProvider.getCredential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
//     assert(user.email != null);
//     assert(user.displayName != null);
//     assert(!user.isAnonymous);
//     assert(await user.getIdToken() != null);

//     final FirebaseUser currentUser = await _auth.currentUser();
//     assert(user.uid == currentUser.uid);

//     updateUserData(user);

//     BotToast.showText(text: "Welcome ${user.displayName}");

//     loading.add(false);

    


//     return user;
//   }

//   void updateUserData(FirebaseUser user) async {
//     DocumentReference ref = _db.collection('users').document(user.uid);


//     return ref.setData({
//       'uid': user.uid,
//       'email': user.uid,
//       'photoUrl': user.photoUrl,
//       'displayName': user.displayName,
//       'lastSeen': DateTime.now()
//     }, merge: true);
//   }

//   void signOut() async {
//     _auth.signOut();

//     SharedPreferences prefs = await SharedPreferences.getInstance();
// //    prefs?.clear();
//     prefs.setBool('isLoggedIn', true);
//     prefs.setString("displayName", "");
//     prefs.setString("phoneNumber", "");
//     prefs.commit();

//   }
// }
