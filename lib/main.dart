import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/pages/homepage.dart';
import 'package:learning/pages/login.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';


void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return MaterialApp(

     themeMode: ThemeMode.system,
     theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily,
                        cardColor: Colors.white,
                        canvasColor: Color.fromRGBO(255, 253, 208, 1.0),
                        floatingActionButtonTheme: const FloatingActionButtonThemeData(
                                     backgroundColor: Color(0xff403b58),
                                    foregroundColor: Colors.white,)),
     darkTheme: ThemeData(brightness: Brightness.dark,
                          fontFamily: GoogleFonts.lato().fontFamily,
                         cardColor: Colors.black,

                         canvasColor: Vx.gray900,
       floatingActionButtonTheme: const FloatingActionButtonThemeData(
         backgroundColor: Vx.indigo500,
         foregroundColor: Colors.white,
       ),

     ),

     routes: {"/" : (context)=> Homepage(),
             "/home": (context) {return Homepage();}
           },
   );
  }

}




