import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/context_extensions.dart';
import 'package:medical_app/presentation/common/base_screen.dart';
import 'package:medical_app/presentation/screens/onboarding/walkthrough_screen.dart';

class SplashScreen extends HookWidget {
  static const id = "/";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(
        const Duration(seconds: 3),
        () => Get.offAndToNamed(WalkThroughScreen.id),
      );

      return;
    }, const []);

    return BaseScreen(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/app_icon.png", width: 150),
            Text(
              context.resources.strings.appTitle,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
