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

class SwitchController extends GetxController{
  final switch1 = false.obs;
  final switch2 = false.obs;

  onSwitch1(){
    switch1.value = !switch1.value;
  }

  onSwitch2 () {
    switch2.value = !switch2.value;
  }
}

class DropDownController extends GetxController{
  final selectValue = "connect 1".obs;

  updateValue(String newValue){
    selectValue.value = newValue;
  }
}