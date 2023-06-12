

import 'package:flutter/material.dart';
import 'package:learning/pages/homepagedetail.dart';
import 'package:velocity_x/velocity_x.dart';

class Cart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

 return Scaffold(body: SafeArea(child:Column(
                                    children: ["Cart".text.bold.xl4.make().centered(),
                                      Cartlist().p32().expand(),

                                    _CartTotal()]


 ),));

}}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SizedBox(height: 100,child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                            children: ["\$9999".text.xl5.make(),30.widthBox,
                                                      ElevatedButton(
                                                          onPressed: (){ScaffoldMessenger.of(context).showSnackBar
                                                            (SnackBar(content: "Buying Not Supported Yet".text.make()));},
                                                          style:ButtonStyle(backgroundColor:MaterialStateProperty.all(context.theme.floatingActionButtonTheme.backgroundColor)),
                                                          child: "Buy".text.center.make().w24(context))],));
  }
}

class  Cartlist extends StatefulWidget{
  @override
  State<Cartlist> createState() => _CartlistState();
}

class _CartlistState extends State<Cartlist> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemCount:26,itemBuilder: (context,index) {
       return ListTile(leading : Icon(Icons.done),
                       title: "Item1".text.make(),
                       trailing: IconButton(icon: Icon(Icons.remove_circle_outline,), onPressed: () {  },),);
    });

  }
}

