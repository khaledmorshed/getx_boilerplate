import 'package:get/get.dart';
import '../../view/features/authentication/change_password_screen.dart';
import '../../view/features/authentication/forget_password_screen.dart';
import '../../view/features/authentication/login_screen.dart';
import '../../view/features/authentication/otp_screen.dart';
import '../../view/features/authentication/registration_screen.dart';
import '../../view/features/authentication/reset_password_screen.dart';
import '../../view/features/splash/splash_screen.dart';

class AppRoutes {
  static int duration = 300;
  static final appRoutes = [
    GetPage(name: SplashScreen.routeName, page: () => const SplashScreen()),
    GetPage(name: LoginScreen.routeName, page: () => const LoginScreen(), transition: Transition.rightToLeft, transitionDuration:  Duration(milliseconds: duration)),
    GetPage(name: RegistrationScreen.routeName, page: () => const RegistrationScreen(), transition: Transition.rightToLeft, transitionDuration:  Duration(milliseconds: duration)),
    GetPage(name: ForgetPasswordScreen.routeName, page: () => const ForgetPasswordScreen(), transition: Transition.rightToLeft, transitionDuration:  Duration(milliseconds: duration)),
    GetPage(name: ResetPasswordScreen.routeName, page: () => const ResetPasswordScreen(), transition: Transition.rightToLeft, transitionDuration:  Duration(milliseconds: duration)),
    GetPage(name: OtpScreen.routeName, page: () => const OtpScreen(), transition: Transition.rightToLeft, transitionDuration:  Duration(milliseconds: duration)),
    GetPage(name: ChangePasswordScreen.routeName, page: () => const ChangePasswordScreen(), transition: Transition.rightToLeft, transitionDuration:  Duration(milliseconds: duration)),

  ];
}