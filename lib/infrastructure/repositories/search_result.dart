
import 'package:flutter/foundation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/user/user.dart';
import '../user/user_dtos.dart';

class SearchResult {
  final KtList<User> users;

  const SearchResult({ @required this.users});

  static SearchResult fromJson(List<Map<String, dynamic>> data) {
    final KtList<User> users = emptyList();
    for (int i = 0; i < data.length; ++i) {
      users.plusElement(UserDto.fromJson(data[i]).toDomain());
    }

    return SearchResult(users: users);
  }
}
