import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

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

      body: SafeArea(
             child: Container(padding: Vx.m16 ,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: ["Catalog App".text.xl4.bold.make(),
                                         "Trendigng Apps".text.xl.make(),
                                          if(Catalog.items.isNotEmpty)

                                              Expanded(
                                                child: ListView.builder(itemCount: Catalog.items.length,
                                                                itemBuilder:(context,index){
                                                     return VxBox(child: Row(
                                                                         children: [Image.network(Catalog.items[index].imageurl,).box.rounded.p16.color(Vx.yellow100).
                                                                                                                                 make().p16().w40(context),
                                                                                   Expanded(child:Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                                                                                                         children: [Catalog.items[index].name.text.bold.make(),
                                                                                                                     Catalog.items[index].descprition.text.textStyle(context.captionStyle).make(),
                                                                                                                   ButtonBar(children: ["\$${Catalog.items[index].price}".text.bold.xl.make(),
                                                                                                                     ElevatedButton(onPressed: (){}, child: "Buy".text.make())],
                                                                                                                                  ),
                                                                                                                ],))],))
                                                            .square(150).rounded.white
                                                            .make().py12();
                                                   }),
                                              )

                                            else Center(child: CircularProgressIndicator(),)]))

    ));
     }

}

