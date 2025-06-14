import 'package:flutter/material.dart';
import 'package:resturant_app_ui/style/style.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up"),),
      body: Padding(padding: EdgeInsets.symmetric(
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

      ],),),
    );
  }
}
