import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';

import '../core/database_failure.dart';
import '../core/user_search_failure.dart';
import '../user/user.dart';

abstract class IDatabaseRepositoryFacade {
  Future<Either<DatabaseFailure, Unit>> setDataInCollection(
      {@required String uid,
      @required String path,
      @required Map<String, dynamic> data});
  Future<Either<DatabaseFailure, Unit>> setDataInDocument(
      {@required String path, @required Map<String, dynamic> data});
  Future<Either<DatabaseFailure, Unit>> setDataInDocumentBatch(
      {@required String path1,
      @required String path2,
      @required Map<String, dynamic> data});
  Future<Either<UserSearchFailure, KtList<User>>> searchUsers(String term);
  // Future<Either<UserSearchFailure, SearchResult>> searchUser(String term);
  Future<Either<DatabaseFailure, Unit>> deleteData();
  Future<Either<DatabaseFailure, bool>> updateNewUser(User user);
  Either<DatabaseFailure, User> user();
  Future<Either<DatabaseFailure, User>> createNewUser(String userType, User user);

}
