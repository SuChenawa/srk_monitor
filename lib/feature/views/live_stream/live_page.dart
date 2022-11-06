import 'package:flutter/material.dart';
import 'package:srk_monitor/feature/views/live_stream/widget/live_page_items.dart';

class LivePage extends StatelessWidget {
  const LivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LivePageItem(),
    );
  }
}
