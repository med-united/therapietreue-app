import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:therapietreu/ui/theme/theme_scaffold.dart';
import 'package:therapietreu/ui/theme/theme_text.dart';

import '../../apis/local_db/local_db.dart';
import '../../main.dart';
import '../auth/states/auth_state.dart';

class Splash extends ConsumerStatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashState();
}

class _SplashState extends ConsumerState<Splash> {
  @override
  void initState() {
    super.initState();
    ref.read(localDBProvider);
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.pushReplacementNamed(context, Routes.home);
    });

    /*  ref.read(authStateProvider.notifier).initAuthState().then((value) {
      Navigator.pushReplacementNamed(context, Routes.home);
    }); */
  }

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
        child: Center(
      child: ThemeBodyMText("Therapietreue"),
    ));
  }
}
