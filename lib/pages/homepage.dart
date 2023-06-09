import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/models/catalog.dart';

import '../widgets/drawer.dart';

class Homepage extends StatefulWidget{
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    loaddata();
    print(1);
    super.initState();
    loaddata();
    print(2);
  }

  loaddata() async{
    await Future.delayed(Duration(seconds: 2));
   String catalogjson= await rootBundle.loadString("asset/catalo.json");

   var decodeddata=jsonDecode(catalogjson);

   var productsdata = decodeddata["product"];

  Catalog.items= List.from(productsdata).map<Catalog>((Items) => Catalog.fromMap(Items)).toList();
  print(Catalog.items);

   setState(() {});
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App", style: TextStyle(color: Colors.black87),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (Catalog.items.isNotEmpty)?GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: GridTile(header: SizedBox(height: 100,width: 12,child: Text("gdf"),),child: Image.network(Catalog.items[index].imageurl,height: 1,width: 1,),),
            );
          },itemCount: Catalog.items.length,):Center(child: CircularProgressIndicator(),),
      ),
      drawer: MyDrawer(),
    );
  }

}