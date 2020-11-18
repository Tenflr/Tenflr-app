
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:college_plan/domain/user/user.dart';
// import 'package:college_plan/infrastructure/repositories/api_path.dart';
// import 'package:college_plan/infrastructure/user/user_dtos.dart';
// import 'package:college_plan/presentation/core/widgets/search_result.dart';
// import 'package:college_plan/presentation/core/widgets/search_result_error.dart';
// import 'package:flutter/foundation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:kt_dart/collection.dart';

// @injectable
// class FirestoreService {

//   Future<void> setDataInCollection(
//       {@required String uid,
//       @required String path,
//       @required Map<String, dynamic> data}) async {
//     final CollectionReference reference = Firestore.instance.collection(path);
//     print('$path: $data');
//     await reference.document(uid).setData(data);
//   }

//   Future<void> setDataInDocument(
//       {@required String path, @required Map<String, dynamic> data}) async {
//     final DocumentReference reference = Firestore.instance.document(path);
//     print('$path: $data');
//     await reference.setData(data);
//   }

//   Future<void> setDataInDocumentBatch(
//       {@required String path1,
//       @required String path2,
//       @required Map<String, dynamic> data}) async {
//     final DocumentReference reference1 = Firestore.instance.document(path1);
//     final DocumentReference reference2 = Firestore.instance.document(path2);
//     final batch = Firestore.instance.batch();
//     print('$path1: $data');
//      batch.setData(reference1, data);
//      batch.setData(reference2, data);
//     batch.commit();
//   }

//   // firestore search
//   Future<SearchResult> search(String term) async {
//     KtList<User> users = emptyList();
//      KtList<User> refinedUserList = emptyList();
//     if (users.size == 0 || (term.length == 1 || term.length > 8)) {
//       try {
//         if (isNumeric(term)) {
//           await Firestore.instance
//               .collection('users')
//               .where("phoneSearchKey",
//                   isEqualTo: term.substring(term.length - 4))
//               .getDocuments()
//               .then((QuerySnapshot snapshot) {
//             for (int i = 0; i < snapshot.documents.length; ++i) {
//               users.plusElement(UserDto.fromJson(snapshot.documents[i].data).toDomain());
//             }
//           });
//         } else
//           await Firestore.instance
//               .collection('users')
//               .where("nameSearchKey",
//                   isEqualTo: term.substring(0, 1).toUpperCase())
//               .getDocuments()
//               .then((QuerySnapshot snapshot) {
//             for (int i = 0; i < snapshot.documents.length; ++i) {
//               users.plusElement(UserDto.fromJson(snapshot.documents[i].data).toDomain());
//             }
//           });

//         return SearchResult(users: users);
//       } catch (e) {
//         throw SearchResultError.fromJson(e);
//       }
//     } else {
//       users.forEach((user) {
//         if (user.displayName.getOrCrash().startsWith(term) ||
//             user.phoneNumber.getOrCrash().contains(term)) {
//           refinedUserList.plusElement(user);
//         }
//       });
//       return SearchResult(users: refinedUserList);
//     }
//   }

//   // helper function
//   bool isNumeric(String s) {
//     if (s == null) {
//       return false;
//     }
//     return double.tryParse(s) != null;
//   }

//   Future<bool> updateAmountTransaction(
//       {@required String path, @required double additionalAmount}) async {
//     // Map map = new Map();
//     // map["last_name"] = "Last Name";
//     // map["first_name"] = "First Name";
//     // map["middle_name"] = "Middle Name";

//     DocumentReference documentReference = Firestore.instance.document(path);
//     Firestore.instance.runTransaction((transaction) async {
//       double newAmount;
//       await transaction
//           .get(documentReference)
//           .then((doc) => newAmount = (doc.data['amount'] + additionalAmount) as double);
//       await transaction
//           .update(documentReference, {
//             'amount': newAmount,
//           })
//           .catchError((e) {})
//           .whenComplete(() {});
//     }).catchError((e) {
//       return false;
//     });

//     return true;
//   }

//   Future<void> deleteData({@required String path}) async {
//     final reference = Firestore.instance.document(path);
//     print("delete: $path");
    // await reference.delete();
//   }

//   Stream<T> documentStream<T>({
//     @required String path,
//     @required T builder(Map<String, dynamic> data, String documentID),
//   }) {
//     final DocumentReference reference = Firestore.instance.document(path);
//     final Stream<DocumentSnapshot> snapshots = reference.snapshots();

//     return snapshots
//         .map((snapshot) => builder(snapshot.data, snapshot.documentID));
//   }

//   // Stream<T> documentStreamRef<T>({
//   //  @required String path,
//   //   @required T builder(Map<String, dynamic> data, String documentID),
//   // }) {
//   //   final DocumentReference reference = Firestore.instance.document(path);
//   //   final Stream<DocumentSnapshot> snapshots = reference.snapshots();

//   //   return snapshots
//   //       .map((snapshot) => builder(snapshot.data, snapshot.documentID));
//   // }

//   Stream<List<T>> collectionChildStream<T>({
//     @required String path,
//     @required String uid,
//     @required T builder(Map<String, dynamic> data, String documentID),
//     Query queryBuilder(Query query),
//     int sort(T lhs, T rhs),
//   }) {
//     Query query = Firestore.instance.collection('$path');
//     if (queryBuilder != null) {
//       query = queryBuilder(query);
//     }

//     final Stream<QuerySnapshot> snapshots = query.snapshots();

//     return snapshots.map((snapshot) {
//       final result = snapshot.documents
//           .map((snapshot) => builder(snapshot.data, snapshot.documentID))
//           .where((value) => value != null)
//           .toList();
//       if (sort != null) {
//         result.sort(sort);
//       }
//       return result;
//     });
//   }

//   Stream<List<T>> collectionStream<T>({
//     @required String path,
//     @required T builder(Map<String, dynamic> data, String documentID),
//     Query queryBuilder(Query query),
//     int sort(T lhs, T rhs),
//   }) {
//     Query query = Firestore.instance.collection(path);
//     if (queryBuilder != null) {
//       query = queryBuilder(query);
//     }

//     final Stream<QuerySnapshot> snapshots = query.snapshots();

//     return snapshots.map((snapshot) {
//       final result = snapshot.documents
//           .map((snapshot) => builder(snapshot.data, snapshot.documentID))
//           .where((value) => value != null)
//           .toList();
//       if (sort != null) {
//         result.sort(sort);
//       }
//       return result;
//     });
//   }

// //Users collection reference
//   final CollectionReference userCollection =
//       Firestore.instance.collection(APIPath.users);

//   // collection reference
//   // Future updateUserData(String sugars, String name, int strength) async {
//   //   return await userCollection.document(uid).setData({
//   //     'sugars': sugars,
//   //     'name': name,
//   //     'strength': strength,
//   //   });
//   // }

//   // brew list from snapshot
//   List<User> _userListFromSnapshot(QuerySnapshot snapshot) {
//     return snapshot.documents.map((doc) {
//       return User.fromMap(doc.data);
//     }).toList();
//   }

//   // userData from snapshot
//   User _userDataFromSnapshot(DocumentSnapshot snapshot) {
//     return User.fromMap(snapshot.data);
//   }

//   // Trusted pay ballance
//   double _userTrustedPayBalanceFromSnapshot(DocumentSnapshot snapshot) {
//     return (snapshot.data ?? "0.0" as num) as double;
//   }

//   //  get brews stream
//   Stream<List<UserDto>> get users {
//     return userCollection.snapshots().map(_userListFromSnapshot);
//   }

//   // get use doc stream
//   Future<UserDto> userData(String uid) async {
//     return await userCollection
//         .document(uid)
//         .snapshots()
//         .map(_userDataFromSnapshot)
//         .first;
//   }

//   Stream<double> trustedPayBalance({String uid}) {
//     return Firestore.instance
//         .collection(APIPath.trustedpayment(uid: uid, paymentId: ''))
//         .document(APIPath.trustedPayBalance)
//         .snapshots()
//         .map(_userTrustedPayBalanceFromSnapshot);
//   }
// }
