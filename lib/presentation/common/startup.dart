import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/context_extensions.dart';

class Startup extends HookWidget {
  const Startup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: context.resources.strings.appTitle,
      theme: context.resources.theme.lightTheme,
      darkTheme: context.resources.theme.darkTheme,
      getPages: context.config.router.routes,
      initialRoute: context.config.router.initialRoute,
    );
  }
}
