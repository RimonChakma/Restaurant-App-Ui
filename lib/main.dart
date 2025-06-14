import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resturant_app_ui/signup_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: "/signupScreen",
      getPages: [
        GetPage(name: "/", page: () => LoginScreen(),),
        GetPage(name: "/signupScreen", page: () => SignupScreen(),)
      ],
    );
  }
}
