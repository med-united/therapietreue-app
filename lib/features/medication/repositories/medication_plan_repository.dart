import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:therapietreu/apis/db/db_api.dart';
import 'package:therapietreu/apis/db/db_exception.dart';
import 'package:therapietreu/apis/local_db/local_db.dart';
import 'package:therapietreu/core/utils/datetime_extend.dart';
import 'package:therapietreu/features/medication/domain/medication_plan.dart';

import 'package:uuid/uuid.dart';

import '../../../core/response/api_response.dart';

import '../../../core/pagination/queried_list.dart';

abstract class MedicationPlanRepository {
  static const String TABLE = "medicationPlans";
  Future<ApiResponse<MedicationPlan, DBException>> getMedicationPlan(
      /*  {required String id} */);
  Future<ApiResponse<MedicationPlan, DBException>> updateMedicationPlan(
      {required MedicationPlan medicationPlan});
  Future<ApiResponse<MedicationPlan, DBException>> createMedicationPlan(
      {required MedicationPlan medicationPlan});

  Future<ApiResponse<QueriedList<MedicationPlan>, DBException>>
      listMedicationPlans({Object? nextToken});
}

Provider<MedicationPlanRepository> medicationPlanRepositoryProvider =
    Provider((ref) => MedicationPlanRepositoryImpl(ref));

class MedicationPlanRepositoryImpl extends MedicationPlanRepository {
  ProviderRef<MedicationPlanRepository> ref;

  MedicationPlanRepositoryImpl(this.ref);
  String dbKey = "plan";
  @override
  Future<ApiResponse<MedicationPlan, DBException>> getMedicationPlan(
      /* {required String id} */) {
    LocalDB dbApi = ref.read(localDBProvider);
    return dbApi.get(table: MedicationPlanRepository.TABLE, docId: dbKey).then(
        (value) => value.mapData((data) => MedicationPlan.fromJson(data)));
  }

  @override
  Future<ApiResponse<MedicationPlan, DBException>> updateMedicationPlan(
      {required MedicationPlan medicationPlan}) {
    LocalDB dbApi = ref.read(localDBProvider);
    medicationPlan = medicationPlan.copyWith(updatedAt: DateTimeMock.now());
    return dbApi
        .update(
            table: MedicationPlanRepository.TABLE,
            docId: dbKey,
            value: medicationPlan.toJson())
        .then(
            (value) => value.mapData((data) => MedicationPlan.fromJson(data)));
  }

  @override
  Future<ApiResponse<MedicationPlan, DBException>> createMedicationPlan(
      {required MedicationPlan medicationPlan}) {
    LocalDB dbApi = ref.read(localDBProvider);
    medicationPlan = medicationPlan.copyWith(
        id: Uuid().v4(),
        createdAt: DateTimeMock.now(),
        updatedAt: DateTimeMock.now());

    return dbApi
        .create(
            table: MedicationPlanRepository.TABLE,
            docId: dbKey,
            value: medicationPlan.toJson())
        .then(
            (value) => value.mapData((data) => MedicationPlan.fromJson(data)));
  }

  @override
  Future<ApiResponse<QueriedList<MedicationPlan>, DBException>>
      listMedicationPlans({Object? nextToken}) {
    LocalDB dbApi = ref.read(localDBProvider);

    return dbApi.list(table: MedicationPlanRepository.TABLE).then((value) =>
        value.mapData((data) => data.map((p0) => MedicationPlan.fromJson(p0))));
  }

  void log(String msg) {
    print("MedicationPlanRepository: ${msg}");
  }
}
