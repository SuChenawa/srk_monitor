import 'package:flutter/material.dart';
import 'package:srk_monitor/constants/colors.dart';
import 'package:srk_monitor/feature/widgets/inkwell_widget.dart';

import '../../../../constants/images.dart';
import 'live_indicator.dart';

class LiveCardView extends StatelessWidget {
  final String? coverUrl;
  final String roomId;
  final String title;
  final int isLive;
  final String userName;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;
  const LiveCardView({
    Key? key,
    required this.title,
    required this.isLive,
    required this.onTap,
    required this.coverUrl,
    required this.roomId,
    this.onLongPress,
    required this.userName,
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
      child: InkwellWidget(
        onTap: onTap,
        onLongPress: onLongPress,
        borderRadius: BorderRadius.circular(12.0),
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
                child: coverUrl == null
                    ? Image.asset(
                        getPlaceHolderPath,
                        height: 180.0,
                        width: 320.0,
                        fit: BoxFit.fill,
                      )
                    : Image.network(
                        coverUrl ?? '',
                        height: 180.0,
                        width: 320.0,
                        fit: BoxFit.fill,
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
              //获取直播间标题
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24.0,
                  color: textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                children: [
                  LiveIndicator(isLive: isLive == 1),
                  const Spacer(),
                  Text(
                    userName,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
