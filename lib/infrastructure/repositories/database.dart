
// import 'package:college_plan/domain/budget/budgets.dart';
// import 'package:college_plan/domain/payment/payment.dart';
// import 'package:college_plan/domain/saving/savings.dart';
// import 'package:college_plan/domain/user/user.dart';
// import 'package:college_plan/infrastructure/repositories/api_path.dart';
// import 'package:college_plan/infrastructure/repositories/firestore_service.dart';
// import 'package:rxdart/rxdart.dart';


// class FirestoreDatabase {
//   // final String uid;
//   // FirestoreDatabase({@required this.uid}) : assert(uid != null);
//   final _service = FirestoreService.instance;

//   // @override
//   // Future<void> setUser(User user, String userName) async =>
//   //     await _service.setData(
//   //       path: APIPath.user(uid, userName),
//   //       data: user.toMap(),
//   //     );

//   @override
//   Stream<List<User>> usersStream() => _service.collectionStream(
//         path: APIPath.users,
//         builder: (data, documentId) => User.fromMap(data),
//       );

//   @override
//   Stream<List<Payment>> transactionsStream({String uid}) => Rx.combineLatest2(
//       transactionReceivedStream(uid: uid),
//       transactionSentStream(uid: uid),
//       (List<Payment> a, List<Payment> b) => a + b);

//   @override
//   Stream<List<Payment>> transactionSentStream({String uid}) =>
//       _service.collectionStream(
//         path: APIPath.trustedpayment(uid: uid, paymentId: ""),
//         builder: (data, documentId) => Payment.fromMap(data, uid),
//       );

//   @override
//   Stream<List<Payment>> transactionReceivedStream({String uid}) =>
//       _service.collectionStream(
//         path: APIPath.trustedpaymentReceiver(receiverUid: uid, paymentId: ""),
//         builder: (data, documentId) => Payment.fromMap(data, uid),
//       );

//   @override
//   Stream<List<Savings>> savingsStream({String uid}) =>
//       _service.collectionStream(
//           path: APIPath.savings(uid: uid),
//           builder: (data, documentId) => Savings.fromMap(data));

//   @override
//   Stream<List<Budget>> budgetsStream({
//     String uid,
//   }) =>
//       Rx.combineLatest3(budgetsPersonalStream(uid: uid),
//           budgetsSentStream(uid: uid), budgetsReceivedStream(uid: uid),
//           (List<Budget> budgetPersonal, List<Budget> budgetSent, List<Budget> budgetReceived) {
//         List<Budget> combinedBudgetList = [];
//         budgetPersonal.forEach((Budget budget) {
//           budget.budgetType = 'personal';
//           combinedBudgetList.add(budget);
//         });
//         budgetSent.forEach((Budget budget) {
//           budget.budgetType = 'sent';
//           combinedBudgetList.add(budget);
//         });
//         budgetReceived.forEach((Budget budget) {
//           budget.budgetType = 'received';
//           combinedBudgetList.add(budget);
//         });

//         return combinedBudgetList;
//       });

//   @override
//   Stream<List<Budget>> budgetsPersonalStream({String uid}) =>
//       _service.collectionStream(
//         path: APIPath.budgetPersonal(uid, ""),
//         builder: (data, documentId) => Budget.fromMap(data),
//       );

//   @override
//   Stream<List<Budget>> budgetsSentStream({String uid}) =>
//       _service.collectionStream(
//         path: APIPath.budgetSent(uid: uid, budgetId: ""),
//         builder: (data, documentId) => Budget.fromMap(data),
//       );

//   @override
//   Stream<List<Budget>> budgetsReceivedStream({String uid}) =>
//       _service.collectionStream(
//         path: APIPath.budgetReceived(receiverUid: uid, budgetId: ""),
//         builder: (data, documentId) => Budget.fromMap(data),
//       );
// }
