import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/response/api_response.dart';
import 'firebase/firebase_functions_api.dart';
import 'functions_exception.dart';

final functionsApiProvider =
    Provider<FunctionsApi>((ref) => FirebaseFunctionsApi());

abstract class FunctionsApi {
  FunctionsApi();

  Future<ApiResponse<Map<String, dynamic>, FunctionsException>> call(
      {required String func, required Map<String, dynamic> data});
}
