import 'package:flutter/widgets.dart';

import '../theme/theme_progress_indicator.dart';

class AsyncGestureDetector extends StatefulWidget {
  final Future Function() onTap;
  final Widget child;
  final HitTestBehavior hitTestBehavior;
  final Widget? loadingIndicator;

  const AsyncGestureDetector({
    required this.child,
    required this.onTap,
    this.loadingIndicator,
    this.hitTestBehavior = HitTestBehavior.translucent,
    Key? key,
  }) : super(key: key);

  @override
  _AsyncGestureDetectorState createState() => _AsyncGestureDetectorState();
}

class _AsyncGestureDetectorState extends State<AsyncGestureDetector> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return widget.loadingIndicator ?? Center(child: ThemeProgressIndicator());
    }

    return GestureDetector(
      behavior: widget.hitTestBehavior,
      child: widget.child,
      onTap: () async {
        if (isLoading) {
          return;
        }

        setState(() {
          isLoading = true;
        });
        await widget.onTap();
        setState(() {
          isLoading = false;
        });
      },
    );
  }
}
