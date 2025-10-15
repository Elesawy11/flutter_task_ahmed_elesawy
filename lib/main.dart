import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/core/responsive/size_helper_extention.dart';
import 'package:flutter_task/core/responsive/size_provider.dart';
import 'core/routing/router.dart';

void main() {
  runApp(
    DevicePreview(enabled: true, builder: (context) => const FlutterTask()),
  );
}

class FlutterTask extends StatelessWidget {
  const FlutterTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeProvider(
      baseSize: Size(360, 690),
      width: context.screenWidth,
      height: context.screenHeight,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData(
          fontFamily: 'Tajawal',
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
