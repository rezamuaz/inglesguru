import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sysbit/src/app.dart';
import 'package:sysbit/src/features/account_page/presentation/widget/account_menu_button.dart';
import 'package:sysbit/src/features/signin_page/presentation/blocs/bloc/auth_bloc.dart';
import 'package:sysbit/src/features/signin_page/presentation/pages/signin_page.dart';

class AccountMenu extends StatefulWidget {
  const AccountMenu({super.key});

  @override
  State<AccountMenu> createState() => _AccountMenuState();
}

class _AccountMenuState extends State<AccountMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AcccountMenuButtons(
            onTap: () {},
            const Icon(Icons.person_outlined),
            title: "Account preference"),
        AcccountMenuButtons(
            onTap: () {},
            const Icon(Icons.payment),
            title: "Subscription & payment"),
        AcccountMenuButtons(
            onTap: () {},
            const Icon(Icons.report),
            title: "Report & feedback"),
        AcccountMenuButtons(
            onTap: () {},
            const Icon(Icons.privacy_tip_outlined),
            title: "Privacy & policy"),
        AcccountMenuButtons(
            onTap: () {},
            const Icon(Icons.help_outline_outlined),
            title: "Help"),
        AcccountMenuButtons(
            onTap: () {}, const Icon(Icons.person_outlined), title: "About"),
        AcccountMenuButtons(onTap: () {
          BlocProvider.of<AuthBloc>(context).add(const AuthEvent.signout());
        }, const Icon(Icons.logout_outlined), title: "Sign Out")
      ],
    );
  }
}
