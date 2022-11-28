import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@Freezed()
class ApiResponse<T, U> with _$ApiResponse<T, U> {
  ApiResponse._();

  factory ApiResponse.data({required T data}) = ApiData<T, U>;
  factory ApiResponse.error({U? error}) = ApiError<T, U>;
  factory ApiResponse.loading({DateTime? startedAt}) = ApiLoading<T, U>;

  ApiResponse<K, U> mapData<K>(K Function(T data) toElement) {
    return map<ApiResponse<K, U>>(
        data: (data) => ApiData(data: toElement(data.data)),
        error: (err) => ApiError(error: err.error),
        loading: (load) => ApiLoading(startedAt: load.startedAt));
  }

  T? get dataOrNull => mapOrNull(data: (value) => value.data);

  bool get isData => this is ApiData;
  bool get isLoading => this is ApiLoading;
  bool get isError => this is ApiError;
}
