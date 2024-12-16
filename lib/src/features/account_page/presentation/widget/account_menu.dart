import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sysbit/src/core/utils/utils.dart';
import 'package:sysbit/src/features/about_page/presentation/pages/about_page.dart';
import 'package:sysbit/src/features/account_page/data/repository/account_repository.dart';
import 'package:sysbit/src/features/account_page/presentation/pages/page_info.dart';
import 'package:sysbit/src/features/account_page/presentation/widget/account_menu_button.dart';
import 'package:sysbit/src/features/purchase_page/presentation/pages/purchase_page.dart';
import 'package:sysbit/src/features/signin_page/presentation/blocs/bloc/auth_bloc.dart';

class AccountMenu extends StatefulWidget {
  const AccountMenu({super.key,required this.color});
  final Color color;

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
            Icon(Icons.person_outlined,color:widget.color ),
            title: "Account preference"),
        AcccountMenuButtons(
            onTap: () {
              Navigator.of(context).push(Utils.createRoute(const PurchasePage()));
            },
            Icon(Icons.payment,color:widget.color),
            title: "Purchase"),
        AcccountMenuButtons(
            onTap: () {},
             Icon(Icons.bug_report_outlined,color:widget.color),
            title: "Report & feedback"),
        AcccountMenuButtons(
            onTap: () async{
              if(Platform.isAndroid){
                 var apiResult = await   AccountRepoImpl().getPrivacyPolicy();
                 apiResult.when(success: (result, success, rc) => Navigator.of(context,rootNavigator: true).push(Utils.createRoute(PageInfo(title: "Privacy policy", htmlContent: result))), failure:(error, message) {
                   
                 }, );
              }
            },
             Icon(Icons.privacy_tip_outlined,color:widget.color),
            title: "Privacy policy"),
         AcccountMenuButtons(
            onTap: () async{
              if(Platform.isAndroid){
                 var apiResult = await   AccountRepoImpl().getTermsAndConditions();
                 apiResult.when(success: (result, success, rc) => Navigator.of(context,rootNavigator: true).push(Utils.createRoute(PageInfo(title: "Terms & conditions", htmlContent: result))), failure:(error, message) {
                   
                 }, );
              }
            },
             Icon(Icons.description_outlined,color:widget.color),
            title: "Terms & conditions"),
        AcccountMenuButtons(
            onTap: () {},
            Icon(Icons.help_outline_outlined,color:widget.color),
            title: "Help"),
        AcccountMenuButtons(
            onTap: () {
              Navigator.of(context,rootNavigator: true).push(Utils.createRoute(const AboutPage()));
            },  Icon(Icons.person_outlined,color:widget.color), title: "About"),
        AcccountMenuButtons(onTap: () {
          BlocProvider.of<AuthBloc>(context).add(const AuthEvent.signout());
        },  Icon(Icons.logout_outlined,color:widget.color), title: "Sign Out"),
       
      ],
    );
  }
}
