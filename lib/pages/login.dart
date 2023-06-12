import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name="";
  bool change = false;
  final _formkey=GlobalKey<FormState>();


  moveToHome(BuildContext) async{
    if( _formkey.currentState!.validate()){
      setState(() {
        change=true;});
      await Future.delayed(Duration(milliseconds:1000));
      await Navigator.pushNamed(context, "/home");
      setState(() {
        change=false;
      });
    }

  }

  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Material(
      color: context.canvasColor,

 child: SingleChildScrollView(
   child: Form(
     key: _formkey,
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
                TextFormField(decoration: InputDecoration(hintText: "Username"),
                            validator: (value){
                              if(value!=null &&value.isEmpty){
                                return "Username cannot be empty";
                              }
                               else return null;
                            },
                              onChanged: (value){name=value;setState(() {

                         });}, ),

                TextFormField(obscureText:true,decoration: InputDecoration(hintText: "Password"),
                                validator: (value){
                                  if(value!=null && value.isEmpty){
                                    return "Please enter the password!";}
                                  else if (value!=null && value.length<6){
                                    return "Password length should be atleast 6 characters.";
                                  }
                                    else return null;
                                },),
              ],
            ),
          ),
        SizedBox(height: 20,),
         Material( borderRadius: BorderRadius.circular(24),color: Colors.lightBlue,
           child: InkWell(onTap: () =>moveToHome(context),
             child: AnimatedContainer(duration:Duration(milliseconds: 1000),height: 43,width:change?43:100,
                            child: change?Icon(Icons.done,color: Colors.white,):Center(child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
           ),
         ),
        ],
      ),
   ),
 ));
  }
}