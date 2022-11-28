import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class ActiveAnimatedIcon extends StatelessWidget {
  bool isActive;

  Widget activeIcon;
  Widget inActiveIcon;

  ActiveAnimatedIcon(
      {required this.isActive,
      required this.activeIcon,
      required this.inActiveIcon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 350),
        transitionBuilder: (child, anim) => RotationTransition(
              turns: child.key == const ValueKey('icon1')
                  ? Tween<double>(begin: 0.25, end: 0).animate(anim)
                  : Tween<double>(begin: 0.75, end: 1).animate(anim),
              child: ScaleTransition(scale: anim, child: child),
            ),
        child: isActive
            ? Container(child: activeIcon, key: const ValueKey('icon1'))
            : Container(
                child: inActiveIcon,
                key: const ValueKey('icon2'),
              ));
  }
}
