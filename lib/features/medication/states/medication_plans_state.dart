import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:therapietreu/core/queried_list_collection/response_collection.dart';
import 'package:therapietreu/core/response/api_response.dart';
import 'package:therapietreu/core/utils/logger.dart';
import 'package:therapietreu/features/medication/domain/medication_plan.dart';
import 'package:therapietreu/features/medication/repositories/medication_plan_repository.dart';

import '../../../apis/db/db_exception.dart';
import '../../../core/pagination/queried_list.dart';

final medicationPlanStateProvider =
    StateNotifierProvider<MedicationPlanState, MedicationPlan?>(
        (ref) => MedicationPlanState(ref));

class MedicationPlanState extends StateNotifier<MedicationPlan?> {
  Ref ref;

  MedicationPlan? get medicationPlan => state;

  MedicationPlanState(this.ref) : super(null) {
    startListeners();
    getMedicationPlan();
  }

  @override
  void dispose() {
    super.dispose();
    stopListeners();
  }

  void startListeners() {}

  void stopListeners() {}

/*   Future<void> list() async {
    MedicationPlanRepository repository =
        ref.read(medicationPlanRepositoryProvider);

    var res = await repository.listMedicationPlan();
    if (res.isData) {
      state = state.appendQueriedList(res, identifier: (object) => object.id);
    }
  } */

  Future<ApiResponse<MedicationPlan, DBException>> createMedicationPlan(
      {required MedicationPlan medicationPlan}) async {
    MedicationPlanRepository repository =
        ref.read(medicationPlanRepositoryProvider);

    var res =
        await repository.createMedicationPlan(medicationPlan: medicationPlan);
    if (res.isData) {
      state = res.dataOrNull;
    }
    return res;
  }

  Future<ApiResponse<MedicationPlan, DBException>> updateMedicationPlan(
      {required MedicationPlan medicationPlan}) async {
    log("Updating medicationPlan: $medicationPlan");
    MedicationPlanRepository repository =
        ref.read(medicationPlanRepositoryProvider);

    var res =
        await repository.updateMedicationPlan(medicationPlan: medicationPlan);
    if (res.isData) {
      state = res.dataOrNull;
    }
    return res;
  }

  Future<ApiResponse<MedicationPlan, DBException>> getMedicationPlan() async {
    log("get medicationPlan: $medicationPlan");
    MedicationPlanRepository repository =
        ref.read(medicationPlanRepositoryProvider);

    var res = await repository.getMedicationPlan();
    if (res.isData) {
      state = res.dataOrNull;
    }
    return res;
  }

  void log(String msg) {
    Logger.info(topic: "MedicationPlanState:", message: " $msg");
  }
}
