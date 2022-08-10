import 'package:get/get.dart';
import 'package:medical_app/core/config/router/app_router.dart';
import 'package:medical_app/presentation/screens/features/appointment_screen.dart';
import 'package:medical_app/presentation/screens/features/home_screen.dart';
import 'package:medical_app/presentation/screens/onboarding/splash_screen.dart';
import 'package:medical_app/presentation/screens/onboarding/walkthrough_screen.dart';

class AppRouterImpl extends AppRouter {
  @override
  String get initialRoute => SplashScreen.id;

  @override
  List<GetPage> get routes => <GetPage>[
        GetPage(name: SplashScreen.id, page: () => const SplashScreen()),
        GetPage(
          name: WalkThroughScreen.id,
          page: () => const WalkThroughScreen(),
        ),
        GetPage(
          name: HomeScreen.id,
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: AppointmentScreen.id,
          page: () => const AppointmentScreen(),
        ),
      ];
}
