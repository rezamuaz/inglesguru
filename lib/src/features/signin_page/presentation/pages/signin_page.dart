import 'dart:async';
import 'dart:developer';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:sysbit/gen/assets.gen.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/features/root_page/presentation/pages/root_page.dart';
import 'package:sysbit/src/features/signin_page/data/model/user_auth.dart';
import 'package:sysbit/src/features/signin_page/presentation/blocs/bloc/auth_bloc.dart';
import 'package:sysbit/src/features/signin_page/presentation/widget/signing_loading.dart';
import 'package:sysbit/src/features/splash_page/presentation/cubits/device_info_cubit.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  GoogleSignInAccount? _currentUser;
  bool _isAuthorized = false; // has granted permissions?

  final String _contactText = '';
  AuthButtonType? buttonType;
  AuthIconType? iconType;
  bool isLoading = false;
  bool darkMode = false;

  ThemeMode get themeMode => darkMode ? ThemeMode.dark : ThemeMode.light;

  @override
  void initState() {
    super.initState();
    googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? account) async {
      bool isAuthorized = account != null;
      // However, on web...
      if (kIsWeb && account != null) {
        isAuthorized = await googleSignIn.canAccessScopes(scopes);
      }
      if (mounted) {
        setState(() {
          _currentUser = account;
          _isAuthorized = isAuthorized;
        });
      }

      // Now that we know that the user can access the required scopes, the app
      // can call the REST API.
      // unawaited(future)
    });
    googleSignIn.signInSilently();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          isAuthorized: (user) {
            if (context.mounted) {
              hideProgressDialogue(context);
              Navigator.of(context).pushReplacement(_createRouteHome());
            }
          },
        );
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        // appBar: AppBar(
        //     automaticallyImplyLeading: false,
        //     systemOverlayStyle:
        //         const SystemUiOverlayStyle(statusBarColor: Colors.transparent)),

        body: Stack(
          children: [
           
            Positioned(
              left: 0,
              right: 0,
              top:MediaQuery.of(context).size.height*0.15,
              child: Padding(
                padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  
                    Container(
                      height: MediaQuery.of(context).size.width * 0.40,
                      width: MediaQuery.of(context).size.width * 0.40,
                      child: SvgPicture.asset(
                          fit: BoxFit.fitHeight, Assets.svgs.logo),
                    ),
                   
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
                      right: 0,
                      bottom: MediaQuery.of(context).size.height*0.2,
              child: Column(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [ Text(
                              "Selamat Datang di",
                              style: GoogleFonts.inter(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w300,height: 0.5),
                            ),
                             Text(
                              "Ingles Guru",
                              style: GoogleFonts.inter(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w800,letterSpacing: 1.2),
                            ),],),
                 
                             Text(
                              "Cara Menyenangkan untuk Belajar Bahasa Inggris",
                              style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300),
                            ),
              ],),
            ),
             Positioned(
                      left: 0,
                      right: 0,
                      bottom: MediaQuery.of(context).size.height*0.1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        
                          
                           GoogleAuthButton(
                      onPressed: () async {
                        showDialogue(context);
                    
                        _currentUser = await googleSignIn.signIn();
                        final GoogleSignInAuthentication? googleAuth =
                            await _currentUser?.authentication;
                        if (_currentUser != null) {
                          var userData = UserAuth(
                              idToken: googleAuth?.idToken,
                              displayName: _currentUser?.displayName,
                              email: _currentUser?.email,
                              idGoole: _currentUser?.id,
                              photoUrl: _currentUser?.photoUrl);
                          var info =
                              BlocProvider.of<DeviceInfoCubit>(context)
                                  .state;
                          BlocProvider.of<AuthBloc>(context)
                              .add(AuthEvent.signing(userData, info));
                        }
                    
                        // Navigator.of(context).pushReplacement(_createRouteHome());
                        // setState(() {
                        //   isLoading = !isLoading;
                        // });
                      },
                      themeMode: themeMode,
                      isLoading: isLoading,
                      style: AuthButtonStyle(
                        borderRadius: 20,
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .apply(color: Colors.grey[700]),
                        margin: const EdgeInsets.only(bottom: 10),
                      ),
                    ),
                        ],
                      ),
                    ),
          ],
        ),
      ),
    );
  }

  void showDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => SigningLoading(),
    );
  }

  void hideProgressDialogue(BuildContext context) {
    Navigator.of(context).pop(SigningLoading());
  }
}

// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) =>
//         const RegistrationScreen(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(1.0, 0.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;

//       var tween =
//           Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }

Route _createRouteHome() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const RootPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
