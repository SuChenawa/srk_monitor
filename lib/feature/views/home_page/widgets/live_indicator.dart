import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class LiveIndicator extends StatelessWidget {
  final bool isLive;
  const LiveIndicator({
    Key? key,
    required this.isLive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isLive)
          Container(
            width: 10.0,
            height: 10.0,
            decoration: BoxDecoration(
              color: liveIndicatorColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        const SizedBox(width: 6.0),
        Text(
          isLive ? 'Live' : 'offline',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 18.0,
            height: 32.0 / 18.0,
            color: isLive ? textRedColor : textColor,
          ),
        ),
      ],
    );
  }
}
