import 'package:flutter/widgets.dart';
import 'package:medical_app/core/config/router/app_router.dart';
import 'package:medical_app/core/config/router/app_router_impl.dart';

class Config {
  BuildContext context;

  Config(this.context);

  AppRouter get router => AppRouterImpl();

  static Config of(BuildContext context) {
    return Config(context);
  }
}
