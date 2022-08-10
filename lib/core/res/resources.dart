import 'dart:io';

import 'package:flutter/material.dart';
import 'package:medical_app/core/res/colors/app_colors.dart';
import 'package:medical_app/core/res/strings/english_strings.dart';
import 'package:medical_app/core/res/strings/french_strings.dart';
import 'package:medical_app/core/res/strings/strings.dart';
import 'package:medical_app/core/res/themes/app_themes.dart';

class Resources {
  final BuildContext _context;

  Resources(this._context);

  Strings get strings {
    String languageCode = Platform.localeName.split('_')[0];
    switch (languageCode) {
      case 'fr':
        return FrenchStrings();
      default:
        return EnglishStrings();
    }
  }

  AppColors get color => AppColors();

  AppThemes get theme => AppThemes(_context);

  static Resources of(BuildContext context) {
    return Resources(context);
  }
}
