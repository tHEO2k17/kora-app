import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Startup extends HookWidget {
  const Startup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}