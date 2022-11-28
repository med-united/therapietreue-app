import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:therapietreu/apis/auth/open_id/open_id_api.dart';

import '../../core/response/api_response.dart';
import '../../features/auth/domain/auth_user.dart';
import 'auth_provider.dart';

import 'auth_exception.dart';

final authApiProvider = Provider<AuthApi>((ref) => OpenIdApi());

abstract class AuthApi {
  AuthApi();

  ApiResponse<AuthUser, AuthException> getAuthUser();

  Future<ApiResponse<AuthUser, AuthException>> signIn(
      {required String username, required String password});

  Future<ApiResponse<AuthUser, AuthException>> signInAnonymous();

  Future<ApiResponse<AuthUser, AuthException>> signUp(
      {required String username,
      required String password,
      bool linkToExisting = false});

  Future<bool> signOut();

  Future<ApiResponse<AuthUser, AuthException>> signInWithSocialProvider(
      {required AuthProvider provider, bool linkToExisting = false});
}
