import 'package:flutter/material.dart';
import 'package:new_app/presentation/forget_password/forget_password.dart';
import 'package:new_app/presentation/login/login_view.dart';
import 'package:new_app/presentation/main/main_view.dart';
import 'package:new_app/presentation/onboarding/onboarding_view.dart';
import 'package:new_app/presentation/register/register_view.dart';
import 'package:new_app/presentation/resources/strings_manager.dart';
import 'package:new_app/presentation/splash/splah_view.dart';
import 'package:new_app/presentation/store_details/store_details_view.dart';

class Routes {
  static const String splashRoutes = "/";
  static const String loginRoutes = "/login";
  static const String onBoardingRoute = "/onBoarding";
  static const String registerRoutes = "/register";
  static const String forgetPasswordRoutes = "/forgetPassword";
  static const String mainRoutes = "/main";
  static const String storeDetailsRoutes = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoutes:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.loginRoutes:
        return MaterialPageRoute(builder: (_) => const LogInScreen());

      case Routes.registerRoutes:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case Routes.forgetPasswordRoutes:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());

      case Routes.mainRoutes:
        return MaterialPageRoute(builder: (_) => const MainScreen());

      case Routes.storeDetailsRoutes:
        return MaterialPageRoute(builder: (_) => const StoreDetailsScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
