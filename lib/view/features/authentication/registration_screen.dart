import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/registration_controller.dart';
import '../../../utils/global/classes/email_validation.dart';
import '../../../utils/global/classes/empty_text_field_check.dart';
import '../../../utils/global/classes/password_validation.dart';
import '../../../utils/global/classes/phone_number_validation.dart';
import '../../../utils/global/global_variable.dart';
import '../../../utils/global/screen_padding.dart';
import '../../../utils/global/size_box.dart';
import '../../../utils/style/app_style.dart';
import '../../../utils/theme/extend_theme/text_theme_extend.dart';
import '../../../utils/theme/get_all_theme.dart';
import '../../widgets/custom_widgets/custom_circular_progress_indicator.dart';
import '../../widgets/custom_widgets/custom_elevated_button.dart';
import '../../widgets/custom_widgets/custom_scaffold_widget.dart';
import '../../widgets/custom_widgets/custom_text_form_field.dart';
import 'login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String routeName = '/RegistrationScreen';
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final controller = Get.find<RegistrationController>();
  dynamic txtTheme;

  //registration
  Future<void> registration()async{
    await controller.registration().then((value){
      if(value == success){
        Get.offNamedUntil(LoginScreen.routeName, (route) => false);
      }else{

      }
    });
  }


  @override
  Widget build(BuildContext context) {
    //txtTheme = Theme.of(context).extension<TextThemeExtend>()!;
    return CustomScaffoldWidget(
      body: Column(
        children: [
          formAndButtonContent(),
        ],
      ),
    );
  }

  formAndButtonContent() {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: screenPadding(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Create Account',
                      style: myStyleRobotoCustom(color: GetTheme().txtTheme().txtSecondaryColor!, fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    szH8(),
                    Text(
                      'We happy to see you again. Sign Up to your account.',
                      textAlign: TextAlign.center,
                      style: myStyleRoboto13(color: GetTheme().txtTheme().txtLabelColorMoreMedium!),
                    ),
                  ],
                ),
              ),
              szH30(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name", style: myStyleRoboto14(color: GetTheme().txtTheme().txtLabelColorMoreMedium!)),
                  szH6(),
                  GetBuilder<RegistrationController>(
                      builder: (controller) {
                        return CustomTextFormField(
                          controller: controller.nameController,
                          hintText: "Enter your name",
                          onChanged: (value) {
                            controller.nameErrorText.value = EmptyTextFieldCheck.getEmptyFieldText(value);
                            controller.isNameError.value = !controller.nameErrorText.contains(noError);
                            controller.loginButtonVisibility();
                          },
                          validation: (value) {
                            return controller.isNameError.value ? controller.nameErrorText.value : null;
                          },
                        );
                      }),
                ],
              ),
              szH20(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email", style: myStyleRoboto14(color: GetTheme().txtTheme().txtLabelColorMoreMedium!)),
                  szH6(),
                  GetBuilder<RegistrationController>(
                      builder: (controller) {
                        return CustomTextFormField(
                          controller: controller.emailController,
                          hintText: "Enter your email",
                          textInputType: TextInputType.emailAddress,
                          onChanged: (value) {
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
              szH20(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Phone", style: myStyleRoboto14(color: GetTheme().txtTheme().txtLabelColorMoreMedium!)),
                  szH6(),
                  GetBuilder<RegistrationController>(
                      builder: (controller) {
                        return CustomTextFormField(
                          controller: controller.phoneController,
                          hintText: "Enter your phone",
                          textInputType: TextInputType.number,
                          onChanged: (value) {
                            controller.phoneErrorText.value = EmptyTextFieldCheck.getEmptyFieldText(value);
                            controller.phoneController.text = PhoneNumberValidation.getValidPhoneNumber(controller.phoneController.text);
                            // controller.phoneErrorText.value = PasswordValidation().getPasswordValidationText(password: value, previousPassword: controller.passwordController.text);
                            controller.isPhoneError.value = !controller.phoneErrorText.contains(noError);
                            controller.loginButtonVisibility();
                          },
                          validation: (value) {
                            return controller.isPhoneError.value ? controller.phoneErrorText.value : null;
                          },
                        );
                      }),
                ],
              ),
              szH20(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Password", style: myStyleRoboto14(color: GetTheme().txtTheme().txtLabelColorMoreMedium!)),
                  szH6(),
                  GetBuilder<RegistrationController>(
                      builder: (controller) {
                        return CustomTextFormField(
                          controller: controller.passwordController,
                          hintText: "Password",
                          isPassword: true,
                          suffixIcon:  const Icon(Icons.visibility).icon,
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
              szH22(),
              Obx(() {
                return CustomElevatedButton(
                  themeIndex: 0,
                  textWidget:  controller.isLoading.value ? const CustomCircularProgressIndicator() :  "Register",
                  onPressed: !controller.buttonVisibility.value || controller.isLoading.value ? null : () async{
                    registration();
                  },
                );
              }),
              szH18(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ", style: myStyleRoboto14(color: GetTheme().txtTheme().txtLabelColorMoreMedium!)),
                  InkWell(
                    onTap: (){
                      Get.toNamed(LoginScreen.routeName);
                    },
                    child: Text("Login", style: myStyleRoboto16(
                      color: GetTheme().txtTheme().txtSecondaryColor!,
                    )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
