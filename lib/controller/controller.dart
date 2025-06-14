import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final formState =GlobalKey<FormState>();

  login (){
    if(formState.currentState!.validate()){
      print("Login success");
    }else{
      print("failed try again");
    }
  }
}