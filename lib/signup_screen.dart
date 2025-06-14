import 'package:flutter/material.dart';
import 'package:resturant_app_ui/controller/controller.dart';
import 'package:resturant_app_ui/style/style.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {

  final isController = Get.put(SwitchController());
  final isDropButton = Get.put(DropDownController());
  final controller = Get.put(LoginController());

  SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up"),leading: IconButton(onPressed: () {
        Get.back();
      }, icon: Icon(Icons.arrow_back)),),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(
            vertical: 12,horizontal: 10),child: Column(children: [
              Center(
                child: Image.asset(
                    "assets/images/logo.png",
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
          SizedBox(height: 10,),
          Text("Create your Account",style: TextStyle(color: Colors.blue,fontSize: 22),),
          SizedBox(height: 10,),
          Form(
              key: controller.formState,
              child: Column(children: [
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return "first name is required";
                        }else{
                          return "valid firstname";
                        }
                      },
                      decoration: inputDecorationStyle(
                          "First Name", "First Name", Icon(Icons.person,color: Colors.brown,)),)),
                SizedBox(width: 10,),
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return "last name is required";
                        }else{
                          return "valid lastName";
                        }
                      },
                      decoration: inputDecorationStyle(
                          "Last Name", "Last Name", Icon(Icons.person,color: Colors.brown)),)),
              ],
            ),

            SizedBox(height: 10,),
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "username is required";
                }else{
                  return "valid username";
                }
              },
              decoration: inputDecorationStyle(
                "Username", "username", Icon(Icons.alternate_email,color: Colors.brown)),),
            SizedBox(height: 10,),
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "email is required";
                }else{
                  return "valid email";
                }
              },
              decoration: inputDecorationStyle(
                "Email", "email", Icon(Icons.email,color: Colors.brown)),),
            SizedBox(height: 10,),
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "phoneNumber is required";
                }else{
                  return "valid PhoneNumber";
                }
              },
              decoration: inputDecorationStyle(
                "Mobile Number", "mobile number", Icon(Icons.phone,color: Colors.brown)),),
            SizedBox(height: 10,),
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "password is required";
                }else{
                  return "valid username";
                }
              },
              decoration: inputDecorationStyle(
                "lock", "lock", Icon(Icons.lock,color: Colors.brown),Icon(Icons.visibility,color: Colors.blue,)),),
          ],)),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("is Client Admin?"),
              Obx(() => Switch(value: isController.switch1.value, onChanged: (value) {
                isController.switch1.value =value;
              },),)
            ],),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Can Schedule?"),
              Obx(() => Switch(value: isController.switch2.value, onChanged: (value) {
                isController.switch2.value =value;
              },),)
            ],),
          SizedBox(height: 10,),
          Row(children: [
            Text("WI-FI"),
            SizedBox(width: 10,),
            Obx(() => DropdownButton(
              value: isDropButton.selectValue.value,
              items: [
                DropdownMenuItem(value: "connect 1", child: Text("connect 1")),
                DropdownMenuItem(value: "connect 2", child: Text("connect 2")),
                DropdownMenuItem(value: "connect 3", child: Text("connect 3")),
              ], onChanged: (newValue) {
              if(newValue!=null){
                isDropButton.updateValue(newValue);
              }
            },),)
          ],),
          SizedBox(height: 10,),
          SizedBox(
            height: 40,
            child: TextButton(onPressed: (){
              controller.login();
            },style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
            ), child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_forward),
                  SizedBox(width: 4,),
                  Text("Sign Up")
                ],),
            ),),
          ),
        ],),),
      ),
    );
  }
}
