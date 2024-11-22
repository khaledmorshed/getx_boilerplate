

import 'package:ecommerce_app/utils/theme/app_colors/basic_color.dart';
import 'package:flutter/material.dart';


class AppBackgroundWidget extends StatelessWidget {
  final Widget child;
  const AppBackgroundWidget({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              appPrimaryColor,
              appWhiteColor,
              appWhiteColor,
            ],
          )),
      child: child,
    );
  }
}
