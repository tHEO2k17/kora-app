import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_app/core/context_extensions.dart';
import 'package:medical_app/core/res/themes/themes.dart';

class AppThemes extends Themes {
  final BuildContext _context;

  AppThemes(this._context);

  @override
  ThemeData get darkTheme => ThemeData.dark().copyWith();

  @override
  ThemeData get lightTheme => ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        }),
        textTheme: GoogleFonts.nunitoTextTheme(),
        primarySwatch: _context.resources.color.primaryColor,
      );
}
