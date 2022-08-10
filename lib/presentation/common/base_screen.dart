import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BaseScreen extends HookWidget {
  final Widget body;
  final bool top, bottom;

  const BaseScreen({
    Key? key,
    required this.body,
    this.top = true,
    this.bottom = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: top,
        bottom: bottom,
        child: body,
      ),
    );
  }
}
