import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../constants/colors.dart';
import '../../home_page/widgets/home_app_bar.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({Key? key}) : super(key: key);

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
                AppLocalizations.of(context)!.general,
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
                  AppLocalizations.of(context)!.back_to_previous,
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
      body: const Text('General data'),
    );
  }
}
