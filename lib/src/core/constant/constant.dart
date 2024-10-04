 import 'package:google_sign_in/google_sign_in.dart';

  GoogleSignIn googleSignIn = GoogleSignIn(
  // Optional clientId
  // clientId: 'your-client_id.apps.googleusercontent.com',
  scopes: scopes
);
 final  List<String> scopes = <String>['email', 'profile', 'openid'];
class Constant {

static const String storageBaseUrl = "https://t5w5.c20.e2-7.dev/sys"; 
 }