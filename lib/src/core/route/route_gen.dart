import 'package:flutter/material.dart';
import 'package:sysbit/src/core/utils/utils.dart';
import 'package:sysbit/src/features/account_page/presentation/pages/account_page.dart';
import 'package:sysbit/src/features/advanced_page/pages/advance_page.dart';
import 'package:sysbit/src/features/home_page/presentation/pages/home_page.dart';
import 'package:sysbit/src/features/premium_page/presentation/pages/premium_page.dart';
import 'package:sysbit/src/features/progress_page/presentation/pages/progress_page.dart';
import 'package:sysbit/src/features/root_page/presentation/pages/root_page.dart';
import 'package:sysbit/src/features/splash_page/presentation/pages/splash_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return Utils.createRoute(const SplashPage());

      case '/rootPage':
        return Utils.createRoute(const RootPage());

      case '/homePage':
        return Utils.createRoute(const HomePage());
      case '/progressPage':
        return Utils.createRoute(const ProgressPage());
      case '/premiumPage':
        return Utils.createRoute(const PremiumPage());
      case '/accountPage':
        return Utils.createRoute(const AccountPage());
      case '/advancedPage':
        return Utils.createRoute(const AndvancePage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('ERROR: Route not found')),
      ),
    );
  }
}
