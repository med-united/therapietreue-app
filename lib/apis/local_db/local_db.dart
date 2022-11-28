import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:therapietreu/apis/db/db_exception.dart';
import 'package:therapietreu/core/pagination/queried_list.dart';
import 'package:therapietreu/core/response/api_response.dart';

import 'hive/hive_db.dart';

final localDBProvider = Provider<LocalDB>((ref) => HiveLocalDB(ref));

abstract class LocalDB {
  Future<ApiResponse<Map<String, dynamic>, DBException>> get(
      {required String table, required String docId});
  Future<ApiResponse<Map<String, dynamic>, DBException>> update(
      {required String table,
      required String docId,
      required Map<String, dynamic> value});
  Future<ApiResponse<Map<String, dynamic>, DBException>> create(
      {required String table,
      required String docId,
      required Map<String, dynamic> value});
  Future<ApiResponse<QueriedList<Map<String, dynamic>>, DBException>> list({
    required String table,
  });
}
