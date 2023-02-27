import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:therapietreu/apis/db/db_api.dart';
import 'package:therapietreu/apis/db/db_exception.dart';
import 'package:therapietreu/apis/local_db/local_db.dart';
import 'package:therapietreu/core/utils/datetime_extend.dart';
import 'package:therapietreu/features/medication/domain/medication_plan.dart';

import 'package:uuid/uuid.dart';

import '../../../core/response/api_response.dart';

import '../../../core/pagination/queried_list.dart';
import '../domain/user.dart';

abstract class UserRepository {
  static const String TABLE = "users";
  Future<ApiResponse<User, DBException>> getUser(/*  {required String id} */);
  Future<ApiResponse<User, DBException>> updateUser({required User user});
  Future<ApiResponse<User, DBException>> createUser({required User user});
}

Provider<UserRepository> userRepositoryProvider =
    Provider((ref) => UserRepositoryImpl(ref));

class UserRepositoryImpl extends UserRepository {
  ProviderRef<UserRepository> ref;

  UserRepositoryImpl(this.ref);
  String dbKey = "user";
  @override
  Future<ApiResponse<User, DBException>> getUser(/* {required String id} */) {
    LocalDB dbApi = ref.read(localDBProvider);
    return dbApi
        .get(table: UserRepository.TABLE, docId: dbKey)
        .then((value) => value.mapData((data) => User.fromJson(data)));
  }

  @override
  Future<ApiResponse<User, DBException>> updateUser({required User user}) {
    LocalDB dbApi = ref.read(localDBProvider);
    user = user.copyWith(updatedAt: DateTimeMock.now());
    print("---> USER UPDATED: $user");
    return dbApi
        .update(table: UserRepository.TABLE, docId: dbKey, value: user.toJson())
        .then((value) => value.mapData((data) => User.fromJson(data)));
  }

  @override
  Future<ApiResponse<User, DBException>> createUser({required User user}) {
    LocalDB dbApi = ref.read(localDBProvider);
    user = user.copyWith(
        id: Uuid().v4(),
        createdAt: DateTimeMock.now(),
        updatedAt: DateTimeMock.now());
    print("---> NEW USER CREATED");
    return dbApi
        .create(table: UserRepository.TABLE, docId: dbKey, value: user.toJson())
        .then((value) => value.mapData((data) => User.fromJson(data)));
  }

/*   @override
  Future<ApiResponse<QueriedList<User>, DBException>> listUsers(
      {Object? nextToken}) {
    LocalDB dbApi = ref.read(localDBProvider);

    return dbApi.list(table: UserRepository.TABLE).then((value) =>
        value.mapData((data) => data.map((p0) => User.fromJson(p0))));
  }
 */
  void log(String msg) {
    print("UserRepository: ${msg}");
  }
}
