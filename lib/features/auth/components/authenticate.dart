import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:therapietreu/features/auth/controller/authenticate_controller.dart';
import 'package:therapietreu/ui/theme/theme_primary_button.dart';
import 'package:therapietreu/ui/theme/theme_text.dart';

import '../../../core/response/api_response.dart';
import '../../../ui/theme/theme_colors.dart';
import '../../../ui/theme/theme_textfield.dart';

class Authenticate extends ConsumerStatefulWidget {
  ChangeNotifierProvider<AuthenticateController> controllerProvider;

  Authenticate({required this.controllerProvider, Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthenticateState();
}

class _AuthenticateState extends ConsumerState<Authenticate> {
  @override
  Widget build(BuildContext context) {
    AuthenticateController controller = ref.watch(widget.controllerProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
      child: Column(
        children: [
          if (controller.isNewUser)
            ThemeHeadlineMText("Registrieren")
          else
            ThemeHeadlineMText("Anmelden"),
          SizedBox(
            height: 16,
          ),
          ThemeTextfield(
            controller: controller.usernameController,
            label: "E-Mail",
            showError:
                controller.isValidating && controller.usernameError() != null,
          ),
          SizedBox(
            height: 8,
          ),
          ThemeTextfield(
            controller: controller.passwordController,
            label: "Passwort",
            obscureText: true,
            showError:
                controller.isValidating && controller.passwordError() != null,
          ),
          if (controller.isNewUser)
            ThemeTextfield(
              controller: controller.repeatPasswordController,
              label: "Passwort wiederholen",
              obscureText: true,
              showError: controller.isValidating &&
                  controller.passwordRepeatError() != null,
            ),
          SizedBox(
            height: 8,
          ),
          if (controller.isNewUser)
            GestureDetector(
                onTap: () {
                  setState(() {
                    controller.isNewUser = false;
                  });
                },
                child: ThemeBodySText("Bereits registriert? Hier anmelden"))
          else
            GestureDetector(
                onTap: () {
                  setState(() {
                    controller.isNewUser = true;
                  });
                },
                child:
                    ThemeBodySText("Noch keinen Account? Hier registrieren.")),
          SizedBox(
            height: 8,
          ),
          if (controller.postAuthError != null)
            ThemeBodyMText(
              controller.postAuthError!,
              textColor: ThemeColors.darkPrimaryTextColor,
            ),
          if (!controller.isNewUser)
            ThemePrimaryButton(
                onPressed: () async {
                  AuthenticateController controller =
                      ref.read(widget.controllerProvider);

                  await controller.signIn();
                },
                title: "Anmelden")
          else
            ThemePrimaryButton(
                onPressed: () async {
                  AuthenticateController controller =
                      ref.read(widget.controllerProvider);

                  await controller.signUp();
                },
                title: "Registrieren"),
          SizedBox(
            height: 16,
          ),
          ThemeBodySText("oder"),
          SizedBox(
            height: 16,
          ),
          ThemePrimaryButton(
              onPressed: () async {
                AuthenticateController controller =
                    ref.read(widget.controllerProvider);

                await controller.signInWithApple();
              },
              title: "Mit Apple anmelden"),
          ThemePrimaryButton(
              onPressed: () async {
                AuthenticateController controller =
                    ref.read(widget.controllerProvider);

                await controller.signInWithGoogle();
              },
              title: "Mit Google anmelden")
        ],
      ),
    );
  }
}
