import 'package:flutter/material.dart';
import 'package:resturant_app_ui/controller/controller.dart';
import 'package:resturant_app_ui/signup_screen.dart';
import 'package:resturant_app_ui/style/style.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {

  final controller = Get.put(LoginController());

  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("WelCome Back",style: TextStyle(color: Colors.blue,fontSize: 22,fontWeight: FontWeight.bold),),
          Text("Login to your account",style: TextStyle(fontSize: 15,color: Colors.brown),),
            SizedBox(height: 25,),

           Form(
               key: controller.formState,
               child: Column(children: [
               TextFormField(
                 validator: (value) {
                   if(value == null || value.isEmpty){
                     return "email is required";
                   }else{
                     return "valid email";
                   }
                 },
                 decoration: inputDecorationStyle(
                 "email", "email or username", Icon(Icons.person,color: Colors.brown,))),

             SizedBox(height: 10,),

             TextFormField(
               validator: (value) {
                 if(value == null || value.isEmpty){
                   return "password is required";
                 }else{
                   return "valid password";
                 }
               },
               decoration: inputDecorationStyle(
                 "password", "Password", Icon(Icons.lock,color: Colors.brown,),
                 Icon(Icons.visibility,color: Colors.blue,)),),
           ],)),

            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password?",style: TextStyle(color: Colors.blue,fontSize: 15),),
              ],
            ),
            SizedBox(height: 15,),

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
                  Text("Login")
                ],),
              ),),
            ),

            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Don't have an account?"),
              InkWell(
                  onTap: () {
                    Get.to(SignupScreen());
                  },
                  child: Text("  sign up",style: TextStyle(color: Colors.blue,fontSize: 15),))
            ],)
        ],),
      ),
    );
  }
}
