import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';

import '../../../core/response/api_response.dart';
import '../functions_api.dart';
import '../functions_exception.dart';

class FirebaseFunctionsApi extends FunctionsApi {
  FirebaseFunctionsApi();

  @override
  Future<ApiResponse<Map<String, dynamic>, FunctionsException>> call(
      {required String func, required Map<String, dynamic> data}) async {
    HttpsCallable callable =
        FirebaseFunctions.instanceFor(region: "europe-west1").httpsCallable(
      func,
      options: HttpsCallableOptions(
        timeout: const Duration(seconds: 5),
      ),
    );
    try {
      final HttpsCallableResult<dynamic> result =
          await callable(formatMapToJson(data));
      return ApiData(data: formatJsonToMap(result.data));
    } catch (ex) {
      return ApiError();
    }
  }

  Map<String, dynamic> formatMapToJson(Map<String, dynamic> map) {
    map = map.map((key, value) {
      if (value is List<Map<String, dynamic>>) {
        value = value.map((e) => formatMapToJson(e)).toList();
      } else if (value is Timestamp) {
        value = value.millisecondsSinceEpoch;
      } else if (value is Map<String, dynamic>) {
        value = formatMapToJson(value);
      }

      return MapEntry(key, value);
    });
    return map;
  }

  Map<String, dynamic> formatJsonToMap(Map<String, dynamic> map) {
    print("formatJsonToMap: ");
    map = map.map((key, value) {
      if (value is List<Map<String, dynamic>>) {
        value = value.map((e) => formatJsonToMap(e)).toList();
      } else if (value is Map &&
          value.keys.contains("_nanoseconds") &&
          value.keys.contains("_seconds")) {
        print("found timestamp");

        value = Timestamp(
            (value["_seconds"] as int), (value["_nanoseconds"] as int));
      } else if (value is Map<String, dynamic>) {
        value = formatMapToJson(value);
      }
      return MapEntry(key, value);
    });
    return map;
  }
}
