import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:sysbit/src/core/theme/theme_config.dart';
import 'package:sysbit/src/features/conversation_page/presentation/cubit/lesson_data_cubit.dart';
import 'package:sysbit/src/features/tutorial_page/presentation/pages/tutorial_page.dart';
import 'package:sysbit/src/features/lessons_page/presentation/pages/lessons_page.dart';
import 'package:sysbit/src/features/signin_page/presentation/blocs/bloc/auth_bloc.dart';
import 'package:sysbit/src/features/splash_page/presentation/cubits/device_info_cubit.dart';
import 'package:sysbit/src/features/splash_page/presentation/pages/splash_page.dart';
import 'package:sysbit/src/features/test/test2page.dart';
import 'package:sysbit/src/localization/app_localizations.dart';
import 'package:sysbit/src/settings/settings_controller.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
var logger = Logger(
  printer: PrettyPrinter(),
);
/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AuthBloc(),
            ),
            BlocProvider(
              create: (context) => DeviceInfoCubit(),
            ),
            BlocProvider(
              create: (context) => LessonDataCubit(),
            ),
          ],
          child: MaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,

            // Providing a restorationScopeId allows the Navigator built by the
            // MaterialApp to restore the navigation stack when a user leaves and
            // returns to the app after it has been killed while running in the
            // background.
            locale: const Locale('id', "ID"),
            restorationScopeId: 'app',

            // Provide the generated AppLocalizations to the MaterialApp. This
            // allows descendant Widgets to display the correct translations
            // depending on the user's locale.
            localizationsDelegates: S.localizationsDelegates,
            supportedLocales: S.supportedLocales // English, no country code
            ,

            // Use AppLocalizations to configure the correct application title
            // depending on the user's locale.
            //
            // The appTitle is defined in .arb files found in the localization
            // directory.
            onGenerateTitle: (BuildContext context) => S.of(context)!.appTitle,

            // Define a light and dark color theme. Then, read the user's
            // preferred ThemeMode (light, dark, or system default) from the
            // SettingsController to display the correct theme.
            themeMode: ThemeMode.light,
            theme: UXTheme.lightTheme
              ..copyWith(
                extensions: <ThemeExtension<dynamic>>[
                  // CustomColors.light,
                ],
              ),
            darkTheme: UXTheme.darkTheme,
         
            home: SplashPage(),
            // home: Test2Page(),

            // home: const ProfileUser(),
            // Define a function to handle named routes in order to support
            // Flutter web url navigation and deep linking.
          ),
        );
      },
    );
  }
}
