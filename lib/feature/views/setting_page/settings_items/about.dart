import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../home_page/widgets/home_app_bar.dart';

class AboutPage extends StatelessWidget {
  final double padding = 448;
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        child: Container(
          alignment: Alignment.centerRight,
          child: Row(
            children: [
              const SizedBox(width: 64.0),
              Text(
                '关于',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: textColor,
                  fontSize: 56.0,
                ),
              ),
              const Spacer(),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: surface4Color,
                  backgroundColor: surface2Color,
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                label: Text(
                  '返回上一级',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: textColor,
                    height: 1.5,
                  ),
                ),
                icon: Icon(
                  Icons.arrow_back,
                  color: textColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(width: 64.0),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 64.0,
          vertical: 64.0,
        ),
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: const <Widget>[
            ListTile(
              title: Text('应用名称'),
              subtitle: Text('Srk-Monitor'),
            ),
            ListTile(
              title: Text('用户反馈'),
              subtitle: Text('遇到问题?'),
            ),
            ListTile(
              title: Text('版本信息'),
              subtitle: Text('pre alpha 0.114.514.19.19.810'),
            ),
          ],
        ),
      ),
    );
  }
}
