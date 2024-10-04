import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:sysbit/src/features/account_page/presentation/pages/account_page.dart';
import 'package:sysbit/src/features/home_page/presentation/pages/home_page.dart';

import 'package:sysbit/src/features/premium_page/presentation/pages/premium_page.dart';
import 'package:sysbit/src/features/progress_page/presentation/pages/progress_page.dart';
import 'package:sysbit/src/features/root_page/presentation/blocs/cubit/navbar_view_cubit.dart';
import 'package:sysbit/src/features/signin_page/presentation/blocs/bloc/auth_bloc.dart';
import 'package:sysbit/src/features/signin_page/presentation/pages/signin_page.dart';
import 'package:sysbit/src/features/user_page/presentation/pages/user_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late PersistentTabController _controller;

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const ProgressPage(),
      const PremiumPage(),
      const AccountPage()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          iconSize: 32,
          title: ("Home"),
          activeColorPrimary: CupertinoColors.black,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          inactiveIcon: const Icon(Icons.home_outlined)),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.bar_chart),
          iconSize: 32,
          title: ("Settings"),
          activeColorPrimary: CupertinoColors.black,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          inactiveIcon: const Icon(Icons.bar_chart_outlined)),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.diamond),
          iconSize: 32,
          title: ("Settings"),
          activeColorPrimary: CupertinoColors.black,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          inactiveIcon: const Icon(Icons.diamond_outlined)),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          iconSize: 32,
          title: ("Settings"),
          activeColorPrimary: CupertinoColors.black,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          inactiveIcon: const Icon(Icons.person_outlined)),
    ];
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => NavbarViewCubit(),
        child: BlocListener<AuthBloc,AuthState>(
          listener: (context, state) {
            state.whenOrNull(unAuthorized: () {
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SigninPage()));
            },);
          },
          child: Builder(builder: (context) {
            return PersistentTabView(
              context,
              controller: _controller,
              screens: _buildScreens(),
              decoration: const NavBarDecoration(
                  border:
                      Border(top: BorderSide(width: 2, color: Colors.black12))),
              items: _navBarsItems(),
              handleAndroidBackButtonPress: true, // Default is true.
              resizeToAvoidBottomInset:
                  true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
              stateManagement: true, // Default is true.
              hideNavigationBarWhenKeyboardAppears: true,
              popBehaviorOnSelectedNavBarItemPress: PopBehavior.once,
              padding: const EdgeInsets.only(top: 8),
              backgroundColor: Colors.white,
              isVisible: context.watch<NavbarViewCubit>().state,
              animationSettings: const NavBarAnimationSettings(
                navBarItemAnimation: ItemAnimationSettings(
                  // Navigation Bar's items animation properties.
                  duration: Duration(milliseconds: 400),
                  curve: Curves.ease,
                ),
                screenTransitionAnimation: ScreenTransitionAnimationSettings(
                  // Screen transition animation on change of selected tab.
                  animateTabTransition: true,
                  duration: Duration(milliseconds: 200),
                  screenTransitionAnimationType:
                      ScreenTransitionAnimationType.fadeIn,
                ),
              ),
              confineToSafeArea: true,
              navBarHeight: kBottomNavigationBarHeight,
              navBarStyle: NavBarStyle
                  .style13, // Choose the nav bar style with this property
            );
          }),
        ),
      );
}
