import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

import 'views/homePage/home_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  windowManager.ensureInitialized();
  Window.initialize();

  Window.setEffect(effect: WindowEffect.transparent);
  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.setAsFrameless();
    await windowManager.setHasShadow(false);
    windowManager.show();
  });
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.transparent,
      title: 'Srk Monitor',
      builder: (context, child) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(64.0),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent.withOpacity(.4),
                  borderRadius: BorderRadius.circular(64.0),
                ),
                child: child,
              ),
              const SizedBox(
                width: double.infinity,
                height: 32.0,
                // TODO change the windows Captions to what i want later
                child: WindowCaption(),
              ),
              const DragToResizeArea(
                enableResizeEdges: [
                  ResizeEdge.topLeft,
                  ResizeEdge.top,
                  ResizeEdge.topRight,
                  ResizeEdge.left,
                  ResizeEdge.right,
                  ResizeEdge.bottomLeft,
                  ResizeEdge.bottomLeft,
                  ResizeEdge.bottomRight,
                  ResizeEdge.bottom,
                ],
                child: SizedBox(),
              ),
            ],
          ),
        );
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Manrope',
        useMaterial3: true,
      ),
      routes: {'/': (context) => const HomePageLayout()},
    );
  }
}
