import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../apis/auth/auth_provider.dart';
import '../../../core/response/api_response.dart';

import '../states/auth_state.dart';

ChangeNotifierProvider<AuthenticateController> createAuthController() =>
    ChangeNotifierProvider<AuthenticateController>((ref) {
      return AuthenticateController(ref);
    });

class AuthenticateController extends ChangeNotifier {
  ChangeNotifierProviderRef<AuthenticateController> ref;

  bool isSignedIn = false;

  bool isValidating = false;
  bool isNewUser = false;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();

  String? postAuthError;

  AuthenticateController(this.ref);

  String? usernameError() {
    return null;
  }

  String? passwordError() {
    if (passwordController.text.length < 6) {
      return "Passwort ist zu kurz";
    }

    return null;
  }

  String? passwordRepeatError() {
    if (!isNewUser) {
      return null;
    }

    if (passwordController.text != repeatPasswordController.text) {
      return "Passwörter stimmen nicht überein";
    }

    return null;
  }

  Future<void> signIn() async {
    AuthState authState = ref.read(authStateProvider.notifier);
    var res = await authState.signIn(
        username: usernameController.text, password: passwordController.text);

    if (res is ApiData) {
      // we are done
      isSignedIn = true;
    } else {
      // an error occured
      postAuthError = "Anmeldung fehlgeschlagen";
    }

    notifyListeners();
  }

  Future<void> signUp() async {
    AuthState authState = ref.read(authStateProvider.notifier);
    var res = await authState.signUp(
        username: usernameController.text,
        password: passwordController.text,
        linkToExisting: true);

    if (res is ApiData) {
      // we are done
      isSignedIn = true;
    } else {
      // an error occured
      postAuthError = "Anmeldung fehlgeschlagen";
    }

    notifyListeners();
  }

  Future<void> signInWithApple() async {
    AuthState authState = ref.read(authStateProvider.notifier);
    var res = await authState.socialSignIn(
        authProvider: AuthProvider.Apple, linkToExisting: true);

    if (res is ApiData) {
      // we are done
      isSignedIn = true;
    } else {
      // an error occured
      postAuthError = "Anmeldung fehlgeschlagen";
    }

    notifyListeners();
  }

  Future<void> signInWithGoogle() async {
    AuthState authState = ref.read(authStateProvider.notifier);
    var res = await authState.socialSignIn(
        authProvider: AuthProvider.Google, linkToExisting: true);

    if (res is ApiData) {
      // we are done
      isSignedIn = true;
    } else {
      // an error occured
      postAuthError = "Anmeldung fehlgeschlagen";
    }

    notifyListeners();
  }
}
