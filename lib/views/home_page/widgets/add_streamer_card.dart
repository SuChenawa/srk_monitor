import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:srk_monitor/constants/colors.dart';

import '../providers/streamer_notifier.dart';

class AddStreamrCard extends ConsumerWidget {
  const AddStreamrCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    StreamerNotifier streamerNotifier = ref.read(streamerProvider.notifier);
    TextEditingController controller = TextEditingController();
    return Hero(
      tag: 'AddStreamer',
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Material(
          color: surface2Color,
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 200.0,
                      child: Center(
                        child: Text(
                          '请输入房间ID',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: textColor,
                            fontWeight: FontWeight.w700,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200.0,
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        controller: controller,
                        onSubmitted: (value) {
                          if (controller.text != '') {
                            streamerNotifier.addStreamer(
                                context, controller.text);
                            Navigator.maybePop(context);
                          }
                        },
                      ),
                    ),
                    Container(
                      width: 200.0,
                      margin: const EdgeInsets.only(top: 20.0),
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: surface4Color,
                          primary: surface3Color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                        onPressed: () {
                          if (controller.text != '') {
                            streamerNotifier.addStreamer(
                                context, controller.text);
                            Navigator.maybePop(context);
                          }
                        },
                        child: Text(
                          '确认',
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
