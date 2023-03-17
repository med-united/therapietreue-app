import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:therapietreu/features/auth/controller/authenticate_controller.dart';

import '../../../ui/theme/theme_colors.dart';
import '../../../ui/theme/theme_navigation_bar.dart';
import '../../../ui/theme/theme_scaffold.dart';
import '../components/authenticate.dart';

class AuthenticateScreen extends ConsumerStatefulWidget {
  const AuthenticateScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AuthenticateScreenState();
}

class _AuthenticateScreenState extends ConsumerState<AuthenticateScreen> {
  late ChangeNotifierProvider<AuthenticateController> providerController;

  @override
  void initState() {
    super.initState();

    providerController = createAuthController();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthenticateController>(providerController, (previous, next) {
      if (next.isSignedIn) {
        Navigator.pop(context);
      }
    });
    return ThemeScaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: ThemeColors.primaryColor,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4.0),
              child: Container(
                color: ThemeColors.secondaryColor,
                height: 1.0,
              )),
        ),
        child: SingleChildScrollView(
            child: Authenticate(
          controllerProvider: providerController,
        )));
  }
}
