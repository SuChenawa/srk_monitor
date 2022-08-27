import 'package:flutter/material.dart';

import 'live_card_view.dart';

class HomeGridView extends StatelessWidget {
  final double padding = 448;
  const HomeGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int crossAxisCount = (width - padding) ~/ 160;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 64.0,
      ),
      child: GridView.builder(
        itemCount: 33,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount == 0 ? 1 : crossAxisCount,
            childAspectRatio: 1.114),
        itemBuilder: (context, index) {
          return FittedBox(
            fit: BoxFit.fitHeight,
            child: LiveCardView(
              name: 'SuChen is $index',
              isLive: true,
            ),
          );
        },
      ),
    );
  }
}
