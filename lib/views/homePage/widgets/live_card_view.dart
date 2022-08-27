import 'package:flutter/material.dart';
import 'package:srk_monitor/constants/colors.dart';

import '../../../constants/images.dart';
import 'live_indicator.dart';

class LiveCardView extends StatelessWidget {
  final String name;
  final bool isLive;
  const LiveCardView({
    Key? key,
    required this.name,
    required this.isLive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 287.0,
      width: 320.0,
      margin: const EdgeInsets.all(32.0),
      decoration: BoxDecoration(
        color: surface1Color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12.0),
              topLeft: Radius.circular(12.0),
            ),
            child: AspectRatio(
              aspectRatio: 1.778,
              child: Image.asset(
                height: 180.0,
                width: 320.0,
                getPlaceHolderPath,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 20.0,
              right: 20.0,
              bottom: 5.0,
            ),
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24.0,
                color: textColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: LiveIndicator(isLive: isLive),
          ),
        ],
      ),
    );
  }
}
