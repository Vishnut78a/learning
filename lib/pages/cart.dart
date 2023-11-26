





import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning/pages/provider11.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';
import 'Controller.dart';

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
  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {

    return SizedBox(height: 100,child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                            children: [Obx(()=> "\$ ${controller.price.value}".text.xl5.make()),30.widthBox,
                                                      ElevatedButton(
                                                          onPressed: (){ScaffoldMessenger.of(context).showSnackBar
                                                            (SnackBar(content: "Buying Not Supported Yet".text.make()));},
                                                          style:ButtonStyle(backgroundColor:MaterialStateProperty.all(VxContextExtensions(context).theme.floatingActionButtonTheme.backgroundColor)),
                                                          child: "Buy".text.center.make().w24(context))],));
  }
}

class  Cartlist extends StatefulWidget{


   @override
  State<Cartlist> createState() => _CartlistState();
}

class _CartlistState extends State<Cartlist> {

  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {

    return Obx(()=>
        ListView.builder(itemCount:controller.temp.length,itemBuilder: (context,index) {
                 return  Obx(()=>
                          ListTile(leading : Icon(Icons.done),
                                     title: Row(
                                       children: [Image.network(controller.temp[index].imageurl,height: 60,width:60,),
                                         controller.temp[index].name.text.make(),
                                       ],
                                     ),
                                     trailing: IconButton(icon: Icon(Icons.remove_circle_outline,),  onPressed: () {
                                  //    value.setindex(index);
                                       controller.price.value-=controller.temp[index].price as int;
                                       controller.temp.remove(controller.temp[index]);



                                             },),
                                     ),
                 );

              }),
    );}




  }


