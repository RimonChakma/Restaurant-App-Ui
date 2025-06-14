import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formState =GlobalKey<FormState>();


  login (){
    if(formState.currentState!.validate()){
      print("Login success");
    }else{
      Get.snackbar("error", "please check your email and password");
    }
  }
}