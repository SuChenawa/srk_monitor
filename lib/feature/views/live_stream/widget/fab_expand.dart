import 'package:flutter/material.dart';
import 'package:srk_monitor/feature/widgets/inkwell_widget.dart';

class FabExpand extends StatelessWidget {
  final VoidCallback onSettingClick;
  const FabExpand({
    Key? key,
    required this.onSettingClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: const Icon(Icons.menu),
                ),
                InkwellWidget(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: onSettingClick,
                  child: InkwellWidget(
                      onTap: onSettingClick,
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        child: Icon(Icons.settings),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
