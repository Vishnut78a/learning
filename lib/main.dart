import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {








  @override
  Widget build(BuildContext context) {
   var names = ['Android','App','Camera','DCIM','Files','Gallery','HiddenFiles','Images','JPEG','Kingdom','Lambda',
                  'Manage','NewFolder','Optimize','Private','Query','Reserved','Storage','Utilized','Virtual'
                  ,'Web','Xamp','YML','Zip'];
   List<String> images = ['asset/eren.png','asset/eren.png','asset/eren.png','asset/eren.png','asset/eren.png','asset/eren.png','asset/eren.png','asset/eren.png','asset/eren.png','asset/eren.png',
     'asset/91636.jpg','asset/444005.jpg','asset/783506.jpg','asset/783572.jpg','asset/881587.png','asset/91636.jpg','asset/444005.jpg','asset/783506.jpg','asset/783572.jpg','asset/881587.png'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Hel"),
      ),
      body: ListView.builder(itemBuilder:(context,index) {
        return  Card(
          child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage(images[index])),
               title:Text("s") ,
               trailing: Icon(Icons.add_link_rounded), 
            ),
        )
        ;
    },itemCount: images.length,

      )
    );
}}
