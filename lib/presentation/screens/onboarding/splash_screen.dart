import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:medical_app/presentation/common/base_screen.dart';

class SplashScreen extends HookWidget {
  static const id = "/";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      body: Container(
        alignment: Alignment.center,
        child: const FlutterLogo(),
      ),
    );
  }
}
