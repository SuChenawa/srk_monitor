import 'package:flutter/material.dart';
import 'package:srk_monitor/constants/colors.dart';

class InkwellWidget extends StatelessWidget {
  final Widget child;
  final Function onTap;
  final BorderRadius? borderRadius;

  const InkwellWidget({
    Key? key,
    required this.child,
    required this.onTap,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: surface3Color.withOpacity(0.1),
              highlightColor: surface3Color.withOpacity(0.05),
              onTap: () {
                onTap();
              },
              borderRadius: borderRadius,
            ),
          ),
        ),
      ],
    );
  }
}
