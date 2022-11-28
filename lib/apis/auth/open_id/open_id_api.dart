import '../../../core/response/api_response.dart';
import '../../../core/utils/logger.dart';
import '../../../features/auth/domain/auth_user.dart';
import '../auth_api.dart';
import '../auth_exception.dart';
import '../auth_provider.dart';

class OpenIdApi extends AuthApi {
  OpenIdApi();

  @override
  ApiResponse<AuthUser, AuthException> getAuthUser() {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<AuthUser, AuthException>> signIn(
      {required String username, required String password}) async {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<AuthUser, AuthException>> signInAnonymous() async {
    throw UnimplementedError();
  }

  Future<ApiResponse<AuthUser, AuthException>> signUp(
      {required String username,
      required String password,
      bool linkToExisting = false}) async {
    throw UnimplementedError();
  }

  Future<bool> signOut() async {
    throw UnimplementedError();
  }

  Future<ApiResponse<AuthUser, AuthException>> _signInWithGoogle(
      {bool linkToExisting = false}) async {
    throw UnimplementedError();
  }

  Future<ApiResponse<AuthUser, AuthException>> _signInWithApple(
      {bool linkToExisting = false}) async {
    throw UnimplementedError();
  }

  Future<ApiResponse<AuthUser, AuthException>> signInWithSocialProvider(
      {required AuthProvider provider, bool linkToExisting = false}) {
    throw UnimplementedError();
  }

/* 
  AuthUser fromFireUser(User user) {
    throw UnimplementedError();
  }
 */
  void log(String msg) {
    Logger.info(topic: "AuthApi:", message: "${msg}");
  }
}
