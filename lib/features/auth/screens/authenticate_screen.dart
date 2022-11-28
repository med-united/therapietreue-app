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
        navigationBar: ThemeNavigationBar(
          context,
          showBackButton: true,
          title: "",
          backgroundColor: ThemeColors.lightPrimaryBackgroundColor,
        ),
        child: SingleChildScrollView(
            child: Authenticate(
          controllerProvider: providerController,
        )));
  }
}
