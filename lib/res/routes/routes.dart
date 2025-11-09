import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/res/routes/routes_name.dart';
import 'package:getx_statemanagement/view/examples/counter_screen.dart';
import 'package:getx_statemanagement/view/examples/examples.dart';
import 'package:getx_statemanagement/view/examples/favourite.dart';
import 'package:getx_statemanagement/view/examples/opacity.dart';
import 'package:getx_statemanagement/view/home/home_view.dart';
import 'package:getx_statemanagement/view/login/login_view.dart';
import 'package:getx_statemanagement/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage( 
      name: RouteName.splashScreen,
      page: () => SplashScreen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: RouteName.examples,
      page: () => Examples(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: RouteName.loginView,
      page: () => LoginView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: RouteName.homeView,
      page: () => HomeView(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: RouteName.counter,
      page: () => CounterScreen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: RouteName.opacity,
      page: () => OpacityScreen(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: RouteName.favourite,
      page: () => Favourite(),
      transitionDuration: Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
  ];
}
