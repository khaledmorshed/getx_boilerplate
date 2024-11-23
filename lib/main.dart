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


// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//
// class HomePage extends StatelessWidget {
//   final List<String> items = [
//     'Home',
//     'Profile',
//     'Settings',
//     'Notifications',
//     'Messages',
//     'Help',
//     'More Content',
//     'Another',
//     'Longer Item Example with more content',
//     'Even Longer Item to Test Height Adjustment',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Dynamic Staggered GridView')),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: MasonryGridView.builder(
//           gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // Number of columns
//           ),
//           mainAxisSpacing: 10, // Vertical spacing
//           crossAxisSpacing: 10, // Horizontal spacing
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return Container(
//               padding: const EdgeInsets.all(8.0),
//               decoration: BoxDecoration(
//                 color: Colors.yellow,
//                 borderRadius: BorderRadius.circular(8),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 4,
//                     offset: Offset(2, 2),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     items[index],
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   if (index % 2 == 1)
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: List.generate(5, (i) {
//                         return Padding(
//                           padding: const EdgeInsets.only(top: 8.0),
//                           child: Text(
//                             "${items[index]} - Extra content $i",
//                             style: TextStyle(fontSize: 14),
//                           ),
//                         );
//                       }),
//                     ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// void main() => runApp(MaterialApp(home: HomePage()));




import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/view/widgets/custom_widgets/custom_container_widget.dart';
import 'package:ecommerce_app/view/widgets/custom_widgets/custom_dot_circular_progress.dart';
import 'package:ecommerce_app/view/widgets/custom_widgets/custom_grid_view_widget.dart';
import 'package:ecommerce_app/view/widgets/custom_widgets/custom_home_screen_carousel_widget.dart';
import 'package:ecommerce_app/view/widgets/custom_widgets/custom_scaffold_widget.dart';
import 'package:ecommerce_app/view/widgets/custom_widgets/custom_sliver_grid_view_widget.dart';
import 'package:ecommerce_app/view/widgets/custom_widgets/custom_text_button.dart';
import 'package:ecommerce_app/view/widgets/custom_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'utils/theme/app_colors/basic_color.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> items = List.generate(20, (index) => 'Item $index');
  bool _isLoading = false;
  int _currentPage = 1;
  final int _itemsPerPage = 20;
  final ScrollController _scrollController = ScrollController();
  final GlobalKey ke1 = GlobalKey();
  final GlobalKey ke2 = GlobalKey();
  static String baseFile = "assets/client_slider/";
  List<String> clientSlider = ["${baseFile}0.jpg", "${baseFile}1.jpg", "${baseFile}2.jpg", "${baseFile}3.jpg"];
  int _activeIndex = 0;
  void setActiveIndexValue(int index){
    _activeIndex = index;
    setState(() {

    });
  }



  Future<void> _loadMoreData() async {
    setState(() {
      _isLoading = true;
    });
    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      items.addAll(List.generate(
          _itemsPerPage, (index) => 'Item ${index + (_currentPage * _itemsPerPage)}'));
      _currentPage++;
      _isLoading = false;
    });
  }


    @override
    Widget build(BuildContext context) {
      return CustomScaffoldWidget(
        scaffoldBackGroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: appPrimaryColor,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  // Handle navigation
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Handle navigation
                },
              ),
            ],
          ),
        ),
        body: GestureDetector(
          onTap: (){},
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                floating: true,
                pinned: true,
                snap: true,
                automaticallyImplyLeading: false,
                expandedHeight: 100.0,
                collapsedHeight: 27,
                toolbarHeight: 27,
                //backgroundColor: appPrimaryColor,
                backgroundColor: Colors.teal,
                //backgroundColor: appPrimaryColor.withOpacity(0),
                leading: Builder(
                  builder: (context) {
                    return IconButton(
                      icon: Icon(Icons.menu, color: Colors.white),
                      onPressed: () {
                        Scaffold.of(context).openDrawer(); // Opens the drawer
                      },
                    );
                  },
                ),
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  //background: Container(color: appPrimaryColor),
                  background: GestureDetector(
                    onTap: (){},
                    child: CustomContainerWidget(
                      //gradientColorList: [appPrimaryColorFirst, appPrimaryColor],
                      gradientColorList: [Colors.teal.shade400, Colors.teal],
                    ),
                  ),

                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(25),
                  child: GestureDetector(
                    onTap: (){

                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 7),
                          child: CustomTextFormField(
                            contentPaddingVertical: 9,
                            boarderRadius: 15,
                            hintText: "Search..",
                          ),

                        ),
                      ],
                    ),
                  ),
                ),

                actions: [
                  GestureDetector(onTap: (){}, child: Text("data")),
                  GestureDetector(
                    onTap: (){
                      print("ontap....");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.notification_add, color: Colors.white,),
                    ),
                  ),
                ],
              ),

              SliverToBoxAdapter(
                child: SizedBox(height: 20,)
              ),

              SliverToBoxAdapter(
                child: CustomHomeScreenCarouselWidget(
                  items: clientSlider,
                ),
              ),

              CustomSliverGridViewWidget(
                containerOnTap: (){
                  print("container...ontap...");
                },
                isLoading: _isLoading,
                scrollController: _scrollController,
                items: items,
                fetchData: (){
                  _loadMoreData();
                },
                loadingWidget: CircularProgressIndicator(),
              ),

            ],
          ),
        ),
        // Bottom Navigation Bar
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 20,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
            ],
          ),
        ),
      );
    }

  int _selectedIndex = 0;

  // Handle bottom navigation bar item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


}

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomePage()));

