import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/forget_password_controller.dart';
import '../../../utils/global/classes/email_validation.dart';
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
import 'otp_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  static const String routeName = '/ForgetPasswordScreen';
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final controller = Get.find<ForgetPasswordController>();
  dynamic txtTheme;


  //forget password
  Future<void> forgetPassword()async{
    await controller.forgetPassword().then((value){
      if(value == success){
        Get.toNamed(OtpScreen.routeName);
      }else{

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    txtTheme = Theme.of(context).extension<TextThemeExtend>()!;
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
      flex: 6,
      child: Padding(
        padding: screenPadding(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Forgot Password',
                    style: myStyleRobotoCustom(color: GetTheme().txtTheme().txtSecondaryColor!, fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  szH8(),
                  Text(
                    'Enter your email, we will send a verification code to your email',
                    textAlign: TextAlign.center,
                    style: myStyleRoboto13(color: GetTheme().txtTheme().txtLabelColorMoreMedium!),
                  ),
                ],
              ),
              szH30(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email", style: myStyleRoboto14(color: GetTheme().txtTheme().txtLabelColorMoreMedium!)),
                  szH6(),
                  GetBuilder<ForgetPasswordController>(
                      builder: (controller) {
                        return CustomTextFormField(
                          controller: controller.emailController,
                          hintText: "Enter your email",
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
              Obx(() {
                return CustomElevatedButton(
                  themeIndex: 0,
                  textWidget:  controller.isLoading.value ? const CustomCircularProgressIndicator() :  "Submit",
                  onPressed: !controller.buttonVisibility.value || controller.isLoading.value ? null : () async{
                    forgetPassword();
                  },
                );
              }),
              szH15(),
            ],
          ),
        ),
      ),
    );
  }
}
