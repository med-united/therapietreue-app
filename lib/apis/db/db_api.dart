import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/response/api_response.dart';

import '../../core/pagination/queried_list.dart';
import 'firebase/firestore_api.dart';
import 'query/db_where.dart';

//final dbApiProvider = Provider<DBApi>((ref) => FirestoreApi(ref));

abstract class DBApi {
  ProviderRef<DBApi> ref;
  DBApi(this.ref);
/* 
  Future<ApiResponse<Map<String, dynamic>, DBException>> create(
      {required String table,
      required String docId,
      required Map<String, dynamic> data});

  Future<ApiResponse<Map<String, dynamic>, DBException>> get(
      {required String table, required String docId});

  Future<ApiResponse<QueriedList<Map<String, dynamic>>, DBException>> list(
      {required String table,
      List<DBWhere>? where,
      int limit = 50,
      Object? nextToken,
      String? orderBy,
      bool ascending = true});

  Stream<ApiResponse<Map<String, dynamic>, DBException>> getCanRetry(
      {required String table, required String docId});

  Stream<ApiResponse<QueriedList<Map<String, dynamic>>, DBException>>
      listCanRetry({
    required String table,
    int limit = 50,
    Object? nextToken,
  });

  Future<ApiResponse<Map<String, dynamic>, DBException>> update(
      {required String table,
      required String docId,
      required Map<String, dynamic> data});

  Future<ApiResponse<Map<String, dynamic>, DBException>> delete(
      {required String table,
      required String docId,
      required Map<String, dynamic> data});

  Stream<ApiResponse<QueriedList<Map<String, dynamic>>, DBException>>
      subscribeList({
    required String table,
  }); */
}
