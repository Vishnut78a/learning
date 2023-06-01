import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/pages/homepage.dart';
import 'package:learning/pages/login.dart';
import 'package:video_player/video_player.dart';


void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(

     themeMode: ThemeMode.light,
     theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
     darkTheme: ThemeData(brightness: Brightness.dark),

     routes: {"/" : (context)=> Login(),
             "/login": (context) {return Login();}
           },
   );
  }

}




