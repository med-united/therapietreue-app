import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:therapietreu/features/auth/domain/auth_user.dart';

import '../../../apis/auth/auth_api.dart';
import '../../../apis/auth/auth_provider.dart';
import '../../../core/response/api_response.dart';

import '../../../apis/auth/auth_exception.dart';

abstract class AuthRepository {
  Future<ApiResponse<AuthUser, AuthException>> getAuthUser();
  Future<ApiResponse<AuthUser, AuthException>> signIn(
      {required String username, required String password});

  Future<ApiResponse<AuthUser, AuthException>> signInWithSocial(
      {required AuthProvider authProvider, bool linkToExisting = false});

  Future<ApiResponse<AuthUser, AuthException>> signInAnonymous();

  Future<ApiResponse<AuthUser, AuthException>> signUp(
      {required String username,
      required String password,
      bool linkToExisting = false});
  Future<bool> signOut();
}

Provider<AuthRepository> authRepositoryProvider =
    Provider((ref) => AuthRepositoryImpl(ref));

class AuthRepositoryImpl extends AuthRepository {
  ProviderRef<AuthRepository> ref;

  AuthRepositoryImpl(this.ref);

  @override
  Future<ApiResponse<AuthUser, AuthException>> getAuthUser() async {
    AuthApi authApi = ref.read(authApiProvider);
    return authApi.getAuthUser();
  }

  @override
  Future<ApiResponse<AuthUser, AuthException>> signIn(
      {required String username, required String password}) async {
    AuthApi authApi = ref.read(authApiProvider);
    return authApi.signIn(username: username, password: password);
  }

  @override
  Future<bool> signOut() async {
    AuthApi authApi = ref.read(authApiProvider);
    return authApi.signOut();
  }

  @override
  Future<ApiResponse<AuthUser, AuthException>> signUp(
      {required String username,
      required String password,
      bool linkToExisting = false}) async {
    AuthApi authApi = ref.read(authApiProvider);
    return authApi
        .signUp(
            username: username,
            password: password,
            linkToExisting: linkToExisting)
        .then((value) async {
      await Future.delayed(Duration(seconds: 2));
      print("sign up result: $value");
      return value;
    });
    ;
  }

  @override
  Future<ApiResponse<AuthUser, AuthException>> signInWithSocial(
      {required AuthProvider authProvider, bool linkToExisting = false}) {
    AuthApi authApi = ref.read(authApiProvider);
    return authApi
        .signInWithSocialProvider(
            provider: authProvider, linkToExisting: linkToExisting)
        .then((value) async {
      await Future.delayed(Duration(seconds: 2));
      return value;
    });
    ;
  }

  @override
  Future<ApiResponse<AuthUser, AuthException>> signInAnonymous() {
    AuthApi authApi = ref.read(authApiProvider);
    return authApi.signInAnonymous().then((value) async {
      await Future.delayed(Duration(seconds: 2));
      return value;
    });
  }

  void log(String msg) {
    print("AuthRepository: ${msg}");
  }
}
