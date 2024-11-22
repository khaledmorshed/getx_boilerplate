import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/repositories/local/sharepreferences_class.dart';
import '../../../utils/theme/app_colors/basic_color.dart';
import '../../widgets/custom_widgets/bounce_animation_builder_widget.dart';
import '../authentication/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/SplashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  //Checking token null or not
  Future<bool> checkToken() async{
    String? token = await SharedPreferencesClass.getValue(SharedPreferencesClass.token);
    return token == null ? false : true;
  }

  startTimer() {
    Timer(const Duration(seconds: 2), () async {
      if(await checkToken()){
        Get.offAllNamed(LoginScreen.routeName);
      }else{
        Get.offAllNamed(LoginScreen.routeName);
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteOnly,
      body:  Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            BounceAnimationBuilder(
              builder: (_, __) {
                return Center(
                  child: InteractiveViewer(
                    scaleEnabled: false,
                    boundaryMargin:
                    const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Image.asset(
                      "assets/slider_image/slider_image_1.png",
                      scale: 3,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
