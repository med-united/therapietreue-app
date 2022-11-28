import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:therapietreu/apis/db/converter/datetime.dart';
import 'package:therapietreu/core/pagination/queried_list.dart';

import '../../../core/response/api_response.dart';
import '../../db/db_exception.dart';
import '../local_db.dart';

class HiveLocalDB extends LocalDB {
  Ref ref;

  HiveLocalDB(this.ref) {
    init();
  }

  Future init() async {
    final dir = await getApplicationDocumentsDirectory();

    Hive.init(dir.path);
  }

  @override
  Future<ApiResponse<Map<String, dynamic>, DBException>> get(
      {required String table, required String docId}) async {
    var _box = await Hive.openBox(table.toString());

    var data = ((_box)
        .get(docId, defaultValue: null)); /* as Map<dynamic, dynamic>?); */

    if (data == null) {
      return ApiError(error: DBException.nullResponse());
    }

    return ApiData(data: readData(data.cast<String, dynamic>()));
  }

  @override
  Future<ApiResponse<Map<String, dynamic>, DBException>> update(
      {required String table,
      required String docId,
      required Map<String, dynamic> value}) async {
    var _box = await Hive.openBox(table.toString());

    await _box.put(docId.toString(), writeData(value));

    return ApiData(data: value);
  }

  @override
  Future<ApiResponse<Map<String, dynamic>, DBException>> create(
      {required String table,
      required String docId,
      required Map<String, dynamic> value}) async {
    var _box = await Hive.openBox(table.toString());

    await _box.put(docId.toString(), writeData(value));

    return ApiData(data: value);
  }

  @override
  Future<ApiResponse<QueriedList<Map<String, dynamic>>, DBException>> list({
    required String table,
  }) async {
    Box _box = await Hive.openBox(table.toString());

    return ApiData(
        data: QueriedList(items: _box.values.map((e) => readData(e)).toList()));
  }

  Map<String, dynamic> readData(Map<String, dynamic> data) {
    return data.map<String, dynamic>((key, value) {
      if (value is DateTime) {
        return MapEntry<String, dynamic>(
            key, DateTimeConverter().toJson(value));
      } else if (value is Map<String, dynamic>) {
        return MapEntry<String, dynamic>(key, readData(value));
      }
      return MapEntry<String, dynamic>(key, value);
    }).cast<String, dynamic>();
  }

  Map<String, dynamic> writeData(Map<String, dynamic> data) {
    return data.map<String, dynamic>((key, value) {
      if (value is Timestamp) {
        return MapEntry<String, dynamic>(
            key, DateTimeConverter().fromJson(value));
      } else if (value is Map<String, dynamic>) {
        return MapEntry<String, dynamic>(key, writeData(value));
      }
      return MapEntry<String, dynamic>(key, value);
    }).cast<String, dynamic>();
  }
}
