/* import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/response/api_response.dart';

import 'package:collection/collection.dart';

import '../../../core/pagination/queried_list.dart';
import '../../../core/utils/logger.dart';
import '../db_api.dart';
import '../db_exception.dart';
import '../query/db_where.dart';
import 'firestore_structure.dart';

class FirestoreApi extends DBApi {
  FirestoreApi(super.ref);

  @override
  Future<ApiResponse<Map<String, dynamic>, DBException>> create(
      {required String table,
      required String docId,
      required Map<String, dynamic> data}) async {
    try {
      CollectionReference tableCol = FirebaseFirestore.instance
          .collection(FirestoreStructure.tablePath(ref, table, data: data));

      tableCol.doc(docId).set(data);

      return ApiData(data: data);
    } catch (e) {
      return ApiError(error: fromFirestoreException(e));
    }
  }

  @override
  Future<ApiResponse<Map<String, dynamic>, DBException>> delete(
      {required String table,
      required String docId,
      required Map<String, dynamic> data}) async {
    try {
      DocumentReference docRef = FirebaseFirestore.instance
          .collection(FirestoreStructure.tablePath(ref, table, data: data))
          .doc(docId);
      docRef.delete();

      log("deleted data at: ${docRef.path}");
      return ApiData(data: data);
    } catch (e) {
      return ApiError(error: fromFirestoreException(e));
    }
  }

  @override
  Future<ApiResponse<Map<String, dynamic>, DBException>> get(
      {required String table, required String docId}) async {
    try {
      log("performing get: $table $docId");

      if (FirestoreStructure.isCollectionGroup(table)) {
        QuerySnapshot<Map<String, dynamic>> res = await FirebaseFirestore
            .instance
            .collectionGroup(table)
            .where("id", whereIn: [docId])
            .limit(1)
            .get();

        Map<String, dynamic> data =
            res.docs.first.data() as Map<String, dynamic>;

        log("got  size: ${res.size} data: $data");
        return ApiData(data: data);
      } else {
        DocumentReference docRef;

        docRef = FirebaseFirestore.instance.collection(table).doc(docId);
        DocumentSnapshot res = await docRef.get();

        if (!res.exists) {
          return ApiError(error: DBNullResponse());
        }
        Map<String, dynamic> data = res.data() as Map<String, dynamic>;

        log("got data: $data");
        return ApiData(data: data);
      }
    } catch (e) {
      log("failed get: $e");

      return ApiError(error: fromFirestoreException(e));
    }
  }

  @override
  Future<ApiResponse<QueriedList<Map<String, dynamic>>, DBException>> list(
      {required String table,
      List<DBWhere>? where,
      int limit = 50,
      Object? nextToken,
      String? orderBy,
      bool ascending = true}) async {
    try {
      Query<Map<String, dynamic>> query;

      if (!FirestoreStructure.isCollectionGroup(table)) {
        log("performing list: $table");

        query = FirebaseFirestore.instance
            .collection(FirestoreStructure.tablePath(ref, table, where: where));
      } else {
        log("performing list as cg: $table");

        query = FirebaseFirestore.instance.collectionGroup(table);
      }

      if (where != null) {
        for (DBWhere dbWhere in FirestoreStructure.extractWhere(table, where)) {
          query = query.where(dbWhere.field,
              isEqualTo: (dbWhere is WhereEqualTo) ? dbWhere.object : null,
              isNotEqualTo:
                  (dbWhere is WhereNotEqualTo) ? dbWhere.object : null,
              isGreaterThan:
                  (dbWhere is WhereGreaterThan) ? dbWhere.object : null,
              isLessThan: (dbWhere is WhereLessThan) ? dbWhere.object : null,
              arrayContains:
                  (dbWhere is WhereArrayContains) ? dbWhere.object : null);
        }
      }

      if (orderBy != null) {
        query = query.orderBy(orderBy, descending: !ascending);
      }

      query = query.limit(limit);

      if (nextToken != null) {
        query =
            query.startAfterDocument(nextToken as DocumentSnapshot<Object?>);
      }

      QuerySnapshot<Map<String, dynamic>> res = await query.get();

      List<Map<String, dynamic>> data = res.docs.map((e) => e.data()).toList();

      log("list data: $data");
      return ApiData(
          data: QueriedList(items: data, nextToken: res.docs.lastOrNull));
    } catch (e, trace) {
      log("failed list: $e $trace");

      return ApiError(error: fromFirestoreException(e));
    }
  }

  @override
  Future<ApiResponse<Map<String, dynamic>, DBException>> update(
      {required String table,
      required String docId,
      required Map<String, dynamic> data}) async {
    CollectionReference tableCol = FirebaseFirestore.instance
        .collection(FirestoreStructure.tablePath(ref, table, data: data));

    try {
      log("set data..$docId $table");
      tableCol.doc(docId).set(data);
      return ApiData(data: data);
    } catch (e) {
      return ApiError(error: fromFirestoreException(e));
    }
  }

  @override
  Stream<ApiResponse<Map<String, dynamic>, DBException>> getCanRetry(
      {required String table, required String docId}) {
    var controller =
        new StreamController<ApiResponse<Map<String, dynamic>, DBException>>();

    get(table: table, docId: docId).then((value) {
      controller.add(value);
      if (value is ApiData) {
        controller.close();
      } else {
        /// we retry and wait
        throw "TODO wait and retry for better weather";
      }
    });

    return controller.stream;
  }

  @override
  Stream<ApiResponse<QueriedList<Map<String, dynamic>>, DBException>>
      listCanRetry({required String table, int limit = 50, Object? nextToken}) {
    var controller = new StreamController<
        ApiResponse<QueriedList<Map<String, dynamic>>, DBException>>();

    list(table: table).then((value) {
      controller.add(value);
      if (value is ApiData) {
        controller.close();
      } else {
        /// we retry and wait
        throw "TODO wait and retry for better weather";
      }
    });

    return controller.stream;
  }

  void log(String msg) {
    Logger.info(topic: "FirestoreApi", message: " $msg");
  }

  DBException fromFirestoreException(Object e) {
    throw "Unknown error: $e";
  }

  @override
  Stream<ApiResponse<QueriedList<Map<String, dynamic>>, DBException>>
      subscribeList({required String table}) {
    CollectionReference tableCol = FirebaseFirestore.instance
        .collection(FirestoreStructure.tablePath(ref, table));

    log("subscribing to: $table $tableCol");

    var stream = tableCol.snapshots();

    return stream.map((event) {
      return ApiData(
          data: QueriedList(
              items: event.docs.map((e) {
        log("subscr event exists: ${e.exists}");
        return (e.data() as Map<String, dynamic>);
      }).toList()));
    });
  }
}
 */