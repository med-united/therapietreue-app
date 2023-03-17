// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../../apis/auth/auth_exception.dart';
import '../../../apis/auth/auth_provider.dart';
import '../../../core/response/api_response.dart';

import '../domain/auth_user.dart';
import '../repositories/auth_repository.dart';

final StateNotifierProvider<AuthState, AuthUser?> authStateProvider =
    StateNotifierProvider((ref) => AuthState(ref));

class AuthState extends StateNotifier<AuthUser?> {
  Ref ref;

  bool get isSignedIn => !isAnonymous; //state != null;
  bool get isAnonymous => state?.isAnonymous ?? false;

  String? get userId => state?.id;

  AuthState(this.ref) : super(null) {
    startListeners();
  }

  @override
  void dispose() {
    super.dispose();
    stopListeners();
  }

  void startListeners() {}

  void stopListeners() {}

  Future<ApiResponse<AuthUser, AuthException>> initAuthState() async {
    var res = await getAuthUser();

    // auto anonymous sign in
    /*    if (res is ApiError) {
      res = await signInAnonymous();
      await Future.delayed(Duration(seconds: 1));
    } */

    return res;
  }

  Future<ApiResponse<AuthUser, AuthException>> getAuthUser() async {
    AuthRepository authRepository = ref.read(authRepositoryProvider);
    var authRes = await authRepository.getAuthUser();
    state = authRes.mapOrNull(data: (s) => s.data);
    return authRes;
  }

  Future<ApiResponse<AuthUser, AuthException>> signIn(
      {required String username, required String password}) async {
    AuthRepository authRepository = ref.read(authRepositoryProvider);
    var res =
        await authRepository.signIn(username: username, password: password);
    state = res.mapOrNull(data: (s) => s.data);
    return res;
  }

  Future<ApiResponse<AuthUser, AuthException>> signInAnonymous() async {
    AuthRepository authRepository = ref.read(authRepositoryProvider);
    ApiResponse<AuthUser, AuthException> res =
        await authRepository.signInAnonymous();
    state = res.mapOrNull(data: (s) => s.data);
    return res;
  }

  Future<void> signOut() async {
    AuthRepository authRepository = ref.read(authRepositoryProvider);
    await authRepository.signOut();
  }

  Future<ApiResponse<AuthUser, AuthException>> signUp(
      {required String username,
      required String password,
      bool linkToExisting = false}) async {
    AuthRepository authRepository = ref.read(authRepositoryProvider);
    ApiResponse<AuthUser, AuthException> res = await authRepository.signUp(
        username: username, password: password, linkToExisting: linkToExisting);
    state = res.mapOrNull(data: (s) => s.data);
    return res;
  }

  Future<ApiResponse<AuthUser, AuthException>> socialSignIn(
      {required AuthProvider authProvider, bool linkToExisting = false}) async {
    AuthRepository authRepository = ref.read(authRepositoryProvider);

    ApiResponse<AuthUser, AuthException> res =
        await authRepository.signInWithSocial(
            authProvider: authProvider, linkToExisting: linkToExisting);
    state = res.mapOrNull(data: (s) => s.data);
    return res;
  }

  void log(String? msg) {
    print("AuthState:## ${msg}");
  }
}
