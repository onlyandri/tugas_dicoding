import 'package:flutter/material.dart';
import 'package:tugas_dicoding/screens/sign_in/sign_in_screen.dart';
import 'package:tugas_dicoding/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  splashScreen.routeName: (contex) => splashScreen(),
  SignInScreen.routeName: (contex) => SignInScreen(),
};
