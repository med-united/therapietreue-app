import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:therapietreu/core/queried_list_collection/response_collection.dart';
import 'package:therapietreu/core/response/api_response.dart';
import 'package:therapietreu/core/utils/logger.dart';
import 'package:therapietreu/features/medication/domain/medication_plan.dart';
import 'package:therapietreu/features/medication/repositories/medication_plan_repository.dart';

import '../../../apis/db/db_exception.dart';
import '../../../core/pagination/queried_list.dart';
import '../domain/user.dart';
import '../repositories/user_repository.dart';

final userStateProvider =
    StateNotifierProvider<UserState, User?>((ref) => UserState(ref));

class UserState extends StateNotifier<User?> {
  Ref ref;

/*   late StreamSubscription<ApiResponse<QueriedList<User>, DBException>>
      userSubscription; */

  User? get user => state;

  UserState(this.ref) : super(null) {
    startListeners();
    getUser();
  }

  @override
  void dispose() {
    super.dispose();
    stopListeners();
  }

  void startListeners() {}

  void stopListeners() {}

/*   Future<void> list() async {
    UserRepository repository =
        ref.read(userRepositoryProvider);

    var res = await repository.listUser();
    if (res.isData) {
      state = state.appendQueriedList(res, identifier: (object) => object.id);
    }
  } */

  Future<ApiResponse<User, DBException>> createUser(
      {required User user}) async {
    UserRepository repository = ref.read(userRepositoryProvider);

    var res = await repository.createUser(user: user);
    if (res.isData) {
      state = res.dataOrNull;
    }
    return res;
  }

  Future<ApiResponse<User, DBException>> updateUser(
      {required User user}) async {
    log("Updating user: $user");
    UserRepository repository = ref.read(userRepositoryProvider);

    var res = await repository.updateUser(user: user);
    if (res.isData) {
      state = res.dataOrNull;
    }
    return res;
  }

  Future<ApiResponse<User, DBException>> getUser() async {
    log("get user: $user");
    UserRepository repository = ref.read(userRepositoryProvider);

    var res = await repository.getUser();
    if (res.isData) {
      state = res.dataOrNull;
    }
    return res;
  }

  void log(String msg) {
    Logger.info(topic: "UserState:", message: " $msg");
  }
}
