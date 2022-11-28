/* import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:collection/collection.dart';
import 'package:kea/features/user/repositories/user_repository.dart';

import '../query/db_where.dart';

class FirestoreStructure {
  static String tablePath(Ref ref, String table,
      {Map<String, dynamic>? data, List<DBWhere>? where}) {
    if (table == UserRepository.TABLE) {
      return userPath(ref);
    }

    //throw "Structure not specified for $table";
    return table;
  }

  static List<DBWhere> extractWhere(String table, List<DBWhere> where) {
    /* if (table == CareActionSnoozeRepository.TABLE) {
      return where.where((e) => e.field != "plantId").toList();
    } else if (table == CareActionExecutionRepository.TABLE) {
      return where.where((e) => e.field != "plantId").toList();
    }  */
    return where;
  }

  static String userPath(Ref ref) {
    return UserRepository.TABLE;
  }

  static bool isCollectionGroup(String table) {
    /*    if (table == CareActionExecutionRepository.TABLE) {
      return true;
    }
 */
    return false;
  }
}
 */