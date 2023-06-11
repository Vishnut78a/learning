import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/models/catalog.dart';
import 'package:learning/pages/cart.dart';
import 'package:learning/pages/homepagedetail.dart';
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
      floatingActionButton: FloatingActionButton(onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>Cart()));},child: Icon(CupertinoIcons.cart),),
      body: SafeArea(
             child: Container(padding: Vx.m16 ,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: ["Catalog App".text.xl4.bold.make(),
                                         "Trending Products".text.xl.make(),
                                          if(Catalog.items.isNotEmpty)

                                              Expanded(
                                                child: ListView.builder(itemCount: Catalog.items.length,
                                                                itemBuilder:(context,index){
                                                     return InkWell(onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepagedetail(Catalog.items[index].imageurl,
                                                                                                                                                           Catalog.items[index].name,
                                                                                                                                                              Catalog.items[index].descprition,
                                                                                                                                                               Catalog.items[index].price)));},
                                                                child: VxBox(child: Row(
                                                                                    children: [Hero(
                                                                                      tag: Key(Catalog.items[index].imageurl),
                                                                                      child: Image.network(Catalog.items[index].imageurl,).box.rounded.p16.color(Vx.yellow100).
                                                                                                                                     make().p16().w40(context),
                                                                                    ),
                                                                                                Expanded(child:Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                 children: [Catalog.items[index].name.text.bold.make(),
                                                                                                                       Catalog.items[index].descprition.text.textStyle(context.captionStyle).make(),

                                                                                                                      ButtonBar(alignment:MainAxisAlignment.spaceBetween,children: ["\$${Catalog.items[index].price}".text.bold.xl.make(),
                                                                                                                       Column(
                                                                                                                         children: [
                                                                                                                           ElevatedButton(onPressed: (){},style: ButtonStyle(shape:MaterialStatePropertyAll(StadiumBorder()),backgroundColor: MaterialStatePropertyAll(Colors.deepPurpleAccent)), child: "Add To Cart".text.make(),)


                                                                                                                           ],
                                                                                                                       )],
                                                                                                                                    ),
                                                                                                                  ],))],))
                                                              .square(150).rounded.white
                                                              .make().py12(),
                                                     );
                                                   }),
                                              )

                                            else Center(child: CircularProgressIndicator(),)]))

    ));
     }

}

