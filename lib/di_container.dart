import 'package:dio/dio.dart';
import 'package:ecommerce_app/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/change_password_controller.dart';
import 'controller/forget_password_controller.dart';
import 'controller/login_controller.dart';
import 'controller/otp_controller.dart';
import 'controller/registration_controller.dart';
import 'controller/reset_password_controller.dart';
import 'controller/splash_controller.dart';
import 'controller/theme_controller.dart';
import 'data/datasource/remote/dio/dio_client.dart';
import 'data/datasource/remote/dio/logging_interceptor.dart';
import 'data/repositories/remote/change_password_repo.dart';
import 'data/repositories/remote/forget_password_repo.dart';
import 'data/repositories/remote/login_repo.dart';
import 'data/repositories/remote/otp_repo.dart';
import 'data/repositories/remote/registration_repo.dart';
import 'data/repositories/remote/reset_password_repo.dart';


final sl = GetIt.instance;

Future<void> init() async {

  /// Core
  sl.registerLazySingleton(() => DioClient(AppConstants.baseUrl, sl(), loggingInterceptor: sl(), sharedPreferences: sl()));

  /// Repository
  sl.registerLazySingleton(() => RegistrationRepo(dioClient: sl()));
  sl.registerLazySingleton(() => LoginRepo(dioClient: sl()));

  sl.registerLazySingleton(() => ForgetPasswordRepo(dioClient: sl()));
  sl.registerLazySingleton(() => OtpRepo(dioClient: sl()));
  sl.registerLazySingleton(() => ResetPasswordRepo(dioClient: sl()));
  sl.registerLazySingleton(() => ChangePasswordRepo(dioClient: sl()));

/// Controller
  Get.lazyPut(() => ThemeController(), fenix: true);
  Get.lazyPut(() => SplashController(dioClient: sl()), fenix: true);

  /// Controller
  Get.lazyPut(() => SplashController(dioClient: sl()), fenix: true);
  Get.lazyPut(() => LoginController(dioClient: sl(), loginRepo: sl()), fenix: true);
  Get.lazyPut(() => RegistrationController(dioClient: sl(), registrationRepo: sl()), fenix: true);
  Get.lazyPut(() => ChangePasswordController(dioClient: sl(), changePasswordRepo: sl()), fenix: true);

  Get.lazyPut(() => ForgetPasswordController(dioClient: sl(), forgetPasswordRepo: sl()), fenix: true);
  Get.lazyPut(() => ResetPasswordController(dioClient: sl(), resetPasswordRepo: sl()), fenix: true);
  Get.lazyPut(() => OtpController(dioClient: sl(), otpRepo: sl()), fenix: true);

/// External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => LoggingInterceptor());

}