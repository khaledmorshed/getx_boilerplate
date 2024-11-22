// import 'dart:developer';
// import 'package:ecommerce_app/utils/app_constants.dart';
// import 'package:ecommerce_app/utils/global/classes/internet_connection_class.dart';
// import 'package:ecommerce_app/utils/helper/local_notifications.dart';
// import 'package:ecommerce_app/utils/routes/app_routes.dart';
// import 'package:ecommerce_app/utils/services/global_navigation_service/navigation_service_widget.dart';
// import 'package:ecommerce_app/utils/theme/app_theme.dart';
// import 'package:ecommerce_app/view/features/splash/splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:get/get_state_manager/src/simple/get_state.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'controller/theme_controller.dart';
// import 'di_container.dart' as di;
//
//
// final LocalNotifications localNotifications = LocalNotifications();
// Future<void> requestPermissions() async {
//   if (await Permission.notification.isDenied) {
//     await Permission.notification.request();
//   }
// }
//
//
// void main() async{
//
//   WidgetsFlutterBinding.ensureInitialized();
//
//   await SystemChrome.setPreferredOrientations(
//     [DeviceOrientation.portraitUp],
//   );
//   try{
//     await localNotifications.initializeNotification();
//   }catch(e){
//     log('LocalNotification initialization error:$e');
//   }
//   requestPermissions();
//
//   await di.init();
//
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   //for internet connect set up for global responding
//   initializeInternet(context)async{
//     InternetConnectionClass.startStreaming(context);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     initializeInternet(context);
//     return GetBuilder<ThemeController>(
//       builder: (controller) {
//         return ScreenUtilInit(
//             designSize: const Size(375, 812),
//             minTextAdapt: true,
//             splitScreenMode: true,
//           builder: ((context, child) {
//             return GetMaterialApp(
//               title: AppConstants.appName,
//               debugShowCheckedModeBanner: false,
//               themeMode: controller.themeMode,
//               theme: AppTheme.lightTheme,
//               darkTheme: AppTheme.darkTheme,
//               initialRoute: SplashScreen.routeName,
//               getPages: AppRoutes.appRoutes,
//               navigatorKey: GlobalNavigationService.navigatorKey,
//               onGenerateRoute: RouteGenerator.generateRoutes,
//             );
//           }),
//         );
//       }
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  final List<String> items = [
    'Home',
    'Profile',
    'Settings',
    'Notifications',
    'Messages',
    'Help',
    'More Content',
    'Another',
    'Longer Item Example with more content',
    'Even Longer Item to Test Height Adjustment',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Staggered GridView')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MasonryGridView.builder(
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
          ),
          mainAxisSpacing: 10, // Vertical spacing
          crossAxisSpacing: 10, // Horizontal spacing
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    items[index],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  if (index % 2 == 1)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(5, (i) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "${items[index]} - Extra content $i",
                            style: TextStyle(fontSize: 14),
                          ),
                        );
                      }),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: HomePage()));


