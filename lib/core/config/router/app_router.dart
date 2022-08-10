import 'package:get/get.dart';

abstract class AppRouter {
  String get initialRoute;

  List<GetPage> get routes;
}
