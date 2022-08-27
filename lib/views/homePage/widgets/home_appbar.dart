import 'package:flutter/material.dart';
import 'package:srk_monitor/constants/colors.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  final Widget child;

  const HomeAppBar({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: surface1Color,
      child: child,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(192.0);
}
