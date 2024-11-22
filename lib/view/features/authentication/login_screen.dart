import 'package:ecommerce_app/view/features/authentication/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../controller/login_controller.dart';
import '../../../utils/global/classes/email_validation.dart';
import '../../../utils/global/classes/password_validation.dart';
import '../../../utils/global/global_variable.dart';
import '../../../utils/global/screen_padding.dart';
import '../../../utils/global/size_box.dart';
import '../../../utils/style/app_style.dart';
import '../../../utils/theme/get_all_theme.dart';
import '../../widgets/custom_widgets/custom_check_box.dart';
import '../../widgets/custom_widgets/custom_circular_progress_indicator.dart';
import '../../widgets/custom_widgets/custom_elevated_button.dart';
import '../../widgets/custom_widgets/custom_scaffold_widget.dart';
import '../../widgets/custom_widgets/custom_text_form_field.dart';
import 'forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = Get.find<LoginController>();
  dynamic txtTheme;
  final GlobalKey<FormState> _formKey = GlobalKey();


  /// login
  Future<void> login() async{
    if (_formKey.currentState!.validate()){
      await controller.login().then((value){
        if(value == success){
        //  Get.offNamedUntil(LandingScreen.routeName, (route) => false);
        }else{

        }
      });
    }
  }

  initialize()async{
    await controller.setDefaultVariable();
    await controller.getRememberEmailPassword();
    controller.isLoading.value = false;
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_){
      initialize();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      body:  GetBuilder<LoginController>(
        builder: (controller) {
          return controller.isLoading.value ? const CustomCircularProgressIndicator() :  Column(
            children: [
              formAndButtonContent(),
            ],
          );
        }
      ),
    );
  }

  formAndButtonContent() {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: screenPadding(),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: [
                    Text(
                      'Welcome Back',
                      style: myStyleRobotoCustom(color: GetTheme().txtTheme().txtSecondaryColor!, fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Please login to continue',
                      style: myStyleRoboto13(color: GetTheme().txtTheme().txtLabelColorMoreMedium!),
                    ),
                  ],
                ),
                szH30(),
                /// Email
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email", style: myStyleRoboto14(color: GetTheme().txtTheme().txtLabelColorMoreMedium!)),
                   // Text("Email", style: myStyleRobotoMedium(color: TextThemeExtend().txtLabelColorMoreMedium!)),
                    szH6(),
                    GetBuilder<LoginController>(
                        builder: (controller) {
                          return CustomTextFormField(
                            controller: controller.emailController,
                            hintText: "Enter your email",
                            textInputType: TextInputType.emailAddress,
                            isAutovalidateMode: false,
                            onChanged: (value) async{
                              controller.emailErrorText.value = EmailValidation().getValidEmail(value);
                              controller.isEmailError.value = !controller.emailErrorText.contains(noError);
                              controller.loginButtonVisibility();
                            },
                            validation: (value) {
                              return controller.isEmailError.value ? controller.emailErrorText.value : null;
                            },
                          );
                        }),
                  ],
                ),
                szH15(),
                /// Password
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password", style: myStyleRoboto14(color: GetTheme().txtTheme().txtLabelColorMoreMedium!)),
                    szH6(),
                    GetBuilder<LoginController>(
                        builder: (controller) {
                          return CustomTextFormField(
                            controller: controller.passwordController,
                            textInputAction: TextInputAction.done,
                            hintText: "Enter your password",
                            isPassword: true,
                            suffixIcon:  const Icon(Icons.visibility_off).icon,
                            isAutovalidateMode: false,
                            onChanged: (value) {
                              controller.passwordErrorText.value = PasswordValidation().getPasswordValidationText(password: value);
                              controller.isPasswordError.value = !controller.passwordErrorText.contains(noError);
                              controller.loginButtonVisibility();
                            },
                            validation: (value) {
                              return controller.isPasswordError.value ? controller.passwordErrorText.value : null;
                            },
                          );
                        }),
                  ],
                ),
                szH10(),

                /// Remember me and forget password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Remember me
                    Row(
                      children: [
                        Obx(() {
                          return CustomCheckBox(
                            value: controller.rememberMe.value,
                            onChanged: (value){
                              controller.rememberMe.value = value;
                            },
                          );
                        }
                        ),
                        Text("Remember me", style: myStyleRoboto14(color: GetTheme().txtTheme().txtBodyColorLarge!),)
                      ],
                    ),

                    /// Forget password
                    InkWell(
                      onTap:(){
                        Get.toNamed(ForgetPasswordScreen.routeName);
                      },
                      child: Text("Forget password?", style: myStyleRoboto14(color: GetTheme().txtTheme().txtSecondaryColor!,
                          fontWeight: FontWeight.w600, texStyle:  TextStyle(decorationColor: GetTheme().txtTheme().txtSecondaryColor!)))),
                  ],
                ),
                szH15(),
                Obx(() {
                  return CustomElevatedButton(
                    themeIndex: 0,
                    textWidget:  controller.isLoading.value ? const CustomCircularProgressIndicator() :  "Login",
                    onPressed: !controller.buttonVisibility.value || controller.isLoading.value ? null : () async{
                      login();
                    },
                  );
                }),
                szH10(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: myStyleRoboto14(color: GetTheme().txtTheme().txtLabelColorMoreMedium!)),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, RegistrationScreen.routeName);
                      },
                      child: Text("Sign up", style: myStyleRoboto16(
                        color: GetTheme().txtTheme().txtSecondaryColor!,
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
