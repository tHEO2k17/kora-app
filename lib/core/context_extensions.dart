import 'package:flutter/material.dart';
import 'package:medical_app/core/config/config.dart';
import 'package:medical_app/core/res/resources.dart';

extension AppContext on BuildContext {
  Resources get resources => Resources.of(this);

  Config get config => Config.of(this);
}
