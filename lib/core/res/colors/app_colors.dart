import 'package:flutter/material.dart';
import 'package:medical_app/core/res/colors/base_colors.dart';

class AppColors implements BaseColors {
  final Map<int, Color> _primary = {
    50: const Color.fromRGBO(54, 60, 192, 0.1),
    100: const Color.fromRGBO(54, 60, 192, 0.2),
    200: const Color.fromRGBO(54, 60, 192, 0.3),
    300: const Color.fromRGBO(54, 60, 192, 0.4),
    400: const Color.fromRGBO(54, 60, 192, 0.5),
    500: const Color.fromRGBO(54, 60, 192, 0.6),
    600: const Color.fromRGBO(54, 60, 192, 0.7),
    700: const Color.fromRGBO(54, 60, 192, 0.8),
    800: const Color.fromRGBO(54, 60, 192, 0.9),
    900: const Color.fromRGBO(54, 60, 192, 1.0),
  };

  final Map<int, Color> _accent = {
    50: const Color.fromRGBO(226, 234, 241, 0.1),
    100: const Color.fromRGBO(226, 234, 241, 0.2),
    200: const Color.fromRGBO(226, 234, 241, 0.3),
    300: const Color.fromRGBO(226, 234, 241, 0.4),
    400: const Color.fromRGBO(226, 234, 241, 0.5),
    500: const Color.fromRGBO(226, 234, 241, 0.6),
    600: const Color.fromRGBO(226, 234, 241, 0.7),
    700: const Color.fromRGBO(226, 234, 241, 0.8),
    800: const Color.fromRGBO(226, 234, 241, 0.9),
    900: const Color.fromRGBO(226, 234, 241, 1.0),
  };

  @override
  MaterialColor get accentColor => MaterialColor(0xffe2eaf1, _accent);

  @override
  MaterialColor get primaryColor => MaterialColor(0xff363cc0, _primary);

  @override
  Color get primaryTextColor => const Color(0xff363cc0);

  @override
  Color get accentTextColor => const Color(0xffe2eaf1);

  @override
  Color get lightColor => const Color(0xffECECEC);

  @override
  Color get inputFillColor => const Color(0xffF3F3F3);

  @override
  Color get bottomNavIconActiveColor => const Color(0xff282828);

  @override
  Color get pageColor => const Color(0xffF3F3F3);
}
