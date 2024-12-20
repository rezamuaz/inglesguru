import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';

FirebaseMessaging messaging = FirebaseMessaging.instance;
GoogleSignIn googleSignIn = GoogleSignIn(
    signInOption: SignInOption.standard,
    scopes: scopes);
final List<String> scopes = <String>['email', 'profile', 'openid'];

class Constant {
  /// https://api.inglesguru.com
  static const String baseurl = "https://api.inglesguru.com";

  /// /api/m/auth/login
  static const String login = "/api/m/auth/login";

  /// /api/m/auth/refreshtoken
  static const String refreshEndpoit = "/api/m/auth/refreshtoken";

  /// /api/m/lesson
  static const String starterLesson = "/api/m/lesson?code=0101,0102,0103,0104,0105,0106,0107,0108,0109,0110,0111,0112,0113,0114,0115,0116,0117,0118,0119,0120";

    /// /api/m/lesson
  static const String advanceLesson = "/api/m/lesson?code=0201,0202,0203,0204,0205,0206,0207,0208,0209,0210";

  /// /api/m/lesson/detail
  static const String lessonDetail = "/api/m/lesson/detail";

  /// /api/m/payment/user
  static const String userPaymentHistory = "/api/m/payment/user";

  /// /api/m/payment/invoice
  static const String userInvoice = "/api/m/payment/invoice";

  /// /api/m/payment/new
  static const String createPayment = "/api/m/payment/new";

    /// /api/m/payment/price_list
  static const String paymentPriceList = "/api/m/payment/price_list";

  /// /api/m/lesson/quiz
  static const String quiz = "/api/m/lesson/quiz";

  /// /api/m/utils/fcm
  static const String updateFcm = "/api/m/utils/fcm";

  /// /api/m/user/status
  static const String userStatus = "/api/m/user/status";

  /// /api/m/lesson/flash
  static const String flashCard = "/api/m/lesson/flash";

  /// /info/terms&conditions
  static const String termsAndConditionsAndroid = "/info/terms&conditions";

  /// /info/privacypolicy
  static const String privacypolicyAndroid = "/info/privacypolicy";

  
  static const bool bypassPayment = true;

}
