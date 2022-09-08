import 'package:flutter/material.dart';
import 'package:srk_monitor/constants/colors.dart';
import 'package:srk_monitor/views/livestreame/widget/LivePageItems.dart';

class LivePage extends StatelessWidget {
  const LivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          splashColor: surface4Color,
          backgroundColor: surface2Color,
          foregroundColor: textColor,
          heroTag: 'AddStreamer',
          child: const Icon(Icons.arrow_back),
        ),
        body: const LivePageItem());
  }
}
