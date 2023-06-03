import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name="";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Material(
      color: Colors.white,

 child: SingleChildScrollView(
   child: Column(
     mainAxisSize: MainAxisSize.min,
      children: [
       Image.asset("asset/login.png",height: 350),
       SizedBox(height: 10,),
       Text('Welcome $name',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:16,horizontal: 32),
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(hintText: "Username"),onChanged: (value){name=value;setState(() {

              });}, ),

              TextFormField(obscureText:true,decoration: InputDecoration(hintText: "Password"),),
            ],
          ),
        ),
      SizedBox(height: 20,),
       Container(height: 43,width:100 ,
         child: Center(child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
         decoration:BoxDecoration(borderRadius: BorderRadius.circular(24),color: Colors.lightBlue,) ,),
      ],
    ),
 ));
  }
}