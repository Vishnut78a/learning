import 'dart:convert';
import 'dart:developer';



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning/models/catalog.dart';
import 'package:learning/pages/Controller.dart';
import 'package:learning/pages/cart.dart';
import 'package:learning/pages/homepagedetail.dart';

import 'package:velocity_x/velocity_x.dart';



class Homepage extends StatefulWidget{
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Controller controller = Get.put(Controller());
  Color darkbluish = Color(0xff403b58);
  List<Catalog> list = [];
  void  togglevalue(){
 setState(() {

 });
}
  @override
  void initState() {

    print(1);

    super.initState();
    controller.loaad();

    setState(() {

    });
    print(2);
  }



FocusNode focusNode =FocusNode();
  @override
  Widget build(BuildContext context) {

    return WillPopScope(onWillPop: ()async{
      if(controller.searchedItemName.isEmpty){
        return true;
      }else{
        controller.textEditingController.value.cle  3ar();
        controller.itemlist.value=controller.backupitemlist.value;
        return false;
      }

    },
      child: Scaffold(backgroundColor: context.canvasColor,
              floatingActionButton: FloatingActionButton(backgroundColor: VxContextExtensions(context).theme.floatingActionButtonTheme.backgroundColor,onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context)=>Cart()));},child: Icon(CupertinoIcons.cart,),),
              body: SafeArea(
                child: GestureDetector(onTap:(){FocusScope.of(context).unfocus();},
                       child: Container(padding: Vx.m16 ,
                                child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: ["Catalog App".text.xl4.bold.make(),
                                                     "Trending Products".text.xl.make(),
                                            TextFormField(
                                              controller: controller.textEditingController.value,
                                              onTapOutside: (event){
                                            },onEditingComplete: (){

                                            },
                                              onChanged: ( value){
                                              print("called");
                                              controller.searchedItemName.value=value;
                                                filterelist(value);
                                                                   print(controller.itemlist);


                                                                    },
                                                                  decoration: InputDecoration(prefixIcon: Icon(CupertinoIcons.search),
                                                                                              hintText: "Search",),
                                                                 ),
                                                                Expanded(
                                                                       child:

                                                                            FutureBuilder<RxList<Catalog>>(future: controller.loaad(),builder: (context,snapshot) {

                                                                            if(snapshot.hasData){return

                                                             Obx(()=>
                                                                 ListView.builder(keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                                                                     itemCount: controller.itemlist.length,
                                                            itemBuilder:(context,index){
                                                                   print("bill");
                                                            return InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepagedetail(controller.itemlist[index]))); },
                                                            child: VxBox(child: Row(
                                                            children: [Hero(
                                                            tag: Key(controller.itemlist[index].imageurl),
                                                            child: Image.network(controller.itemlist[index].imageurl,).box.customRounded(BorderRadius.circular(10)).p16.color(context.canvasColor).
                                                            make().p16().w40(context),
                                                            ),
                                                            Expanded(child:Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [controller.itemlist[index].name.text.bold.make(),
                                                            controller.itemlist[index].descprition.text.textStyle(context.captionStyle).make(),

                                                            ButtonBar(alignment:MainAxisAlignment.spaceBetween,children: ["\$${controller.itemlist[index].price}".text.bold.xl.make(),
                                                            Column(
                                                            children: [
                                                            Obx(()=>
                                                                 ElevatedButton(onPressed: (){
                                                                if(controller.temp.contains(controller.itemlist[index])){
                                                                  controller.price.value-=controller.itemlist[index].price as int;
                                                                  controller.temp.remove(controller.itemlist[index]);
                                                                print(controller.price.value);
                                                                }else{
                                                                controller.temp.add(controller.itemlist[index]);
                                                                 controller.price.value+=controller.itemlist[index].price as int;
                                                                 print(controller.price.value);

                                                                }

                                                                },style: ButtonStyle(shape:MaterialStatePropertyAll(StadiumBorder()),
                                                                backgroundColor: MaterialStatePropertyAll(VxContextExtensions(context).theme.floatingActionButtonTheme.backgroundColor)),
                                                                child:controller.temp.contains(controller.itemlist[index])?Icon(CupertinoIcons.cart_badge_minus):"Add To Cart".text.make(),),
                                                            ),


                                                            ],
                                                            )],
                                                            ),
                                                            ],))],)).color(context.cardColor)
                                                                  .square(150).rounded
                                                                  .make().py12(),
                                                            );
                                                            }),
                                                             );


                                                        }else
                                                        {return Center(child: CircularProgressIndicator());}

                                                              }),
                                                                         ),







                                                       ]),
                                )

            ),
              ),

        ),
    );


     }
   Future<void>  refresh()async{
await controller.loaad();
 setState(() {

});

     }
List<Catalog> filteredlist=[];
     filterelist(String query){
    print(controller.itemlist.value);
    if(query.isEmpty){
      print("isEmpty");
     controller.searchquery.value=false;
      controller.itemlist.value=controller.backupitemlist.value;
    }else {
      print("isNotEmpty");
      controller.searchquery.value=true;
      controller.itemlist.value = controller.helperlist.value.where((element) =>
          element.name.toLowerCase().contains(query.toLowerCase())).toList();
    }
    print(controller.itemlist.value);
  }

}

