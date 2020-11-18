// import 'package:tenflrpay/domain/core/user_search_failure.dart';
// import 'package:tenflrpay/domain/database/i_database_repository_facade.dart';
// import 'package:tenflrpay/domain/user/user.dart';
// import 'package:tenflrpay/presentation/core/widgets/firestore_cache.dart';
// import 'package:dartz/dartz.dart';
// import 'package:injectable/injectable.dart';
// import 'package:kt_dart/kt.dart';

// @injectable
// class DatabaseSearchRepository {
//   final FirestoreCache cache;
//   final IDatabaseRepositoryFacade client;

//   DatabaseSearchRepository({this.cache, this.client});

//   Future<Either<UserSearchFailure, KtList<User>>> search(String term) async {
//     if (cache.contains(term)) {
//       return right(cache.get(term));
//     } else {
//       final Either<UserSearchFailure, KtList<User>> result =
//           await client.searchUsers(term);
//      return result.fold((l) => left(l), (r) {
//         cache.set(term, r);
//         return right(r);
//       });
//     }
//   }
// }


