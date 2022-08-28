import 'package:flutter/material.dart';

class AnimatingView extends StatelessWidget {
  final double width;
  final Widget child;
  const AnimatingView({
    Key? key,
    required this.width,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isNotShow = constraints.maxWidth < width;
        if (isNotShow) {
          return Container();
        }
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 100),
          opacity: isNotShow ? 0 : 1,
          child: child,
        );
      },
    );
  }
}
