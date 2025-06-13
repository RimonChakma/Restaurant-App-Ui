import 'package:flutter/material.dart';
import 'package:resturant_app_ui/style/style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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

            TextFormField(decoration: inputDecorationStyle(
                "email", "email or username", Icon(Icons.person,color: Colors.brown,))),
            SizedBox(height: 10,),
            TextFormField(decoration: inputDecorationStyle(
                "password", "Password", Icon(Icons.lock,color: Colors.brown,),
                 Icon(Icons.visibility,color: Colors.blue,)),),
        ],),
      ),
    );
  }
}
