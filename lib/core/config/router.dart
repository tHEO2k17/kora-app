import 'package:get/get.dart';
import 'package:medical_app/presentation/screens/onboarding/splash_screen.dart';
import 'package:medical_app/presentation/screens/onboarding/walkthrough_screen.dart';

class Router {
  static String get initialRoute => SplashScreen.id;

  static List<GetPage> get routes => <GetPage>[
        GetPage(name: SplashScreen.id, page: () => const SplashScreen()),
        GetPage(
          name: WalkThroughScreen.id,
          page: () => const WalkThroughScreen(),
        ),
      ];
}
