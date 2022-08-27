import 'package:flutter/material.dart';

class HomeGridView extends StatelessWidget {
  final double padding = 448;
  const HomeGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (width - padding) ~/ 320,
      ),
      itemBuilder: (context, index) {
        return Container();
      },
    );
  }
}
