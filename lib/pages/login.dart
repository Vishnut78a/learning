import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Material(
      color: Colors.white,


 child: Column(
   mainAxisSize: MainAxisSize.min,
    children: [
     Image.asset("asset/login.png"),
     SizedBox(height: 10,),
     Text('Welcome',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      Padding(
        padding: const EdgeInsets.symmetric(vertical:16,horizontal: 32),
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(hintText: "Username"), ),
            TextFormField(obscureText:true,decoration: InputDecoration(hintText: "Password"),),
          ],
        ),
      ),
    SizedBox(height: 20,),
      ElevatedButton(child: Text("LOGIN"),onPressed: (){},),
    ],
  ));
  }

}