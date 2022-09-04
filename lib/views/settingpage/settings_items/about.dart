import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../home_page/widgets/home_appbar.dart';

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
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: textColor,
                  fontSize: 56.0,
                ),
              ),
              const Spacer(),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  onPrimary: surface4Color,
                  primary: surface2Color,
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                label: Text(
                  'Back',
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
              title: Text('App name'),
              subtitle: Text('Srk-Monitor'),
            ),
            ListTile(
              title: Text('Send feedback'),
              subtitle: Text('encountered an error?'),
            ),
            ListTile(
              title: Text('Version'),
              subtitle: Text('pre alpha 0.114.514.19.19.810'),
            ),
          ],
        ),
      ),
    );
  }
}
