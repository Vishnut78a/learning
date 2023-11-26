import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Controller.dart';

class Homepagedetail extends StatelessWidget{

 Controller controller = Get.put(Controller());
  Homepagedetail(this.object);
  Catalog object;

  @override
  Widget build(BuildContext context) {
    Color darkbluish = Color(0xff403b58);
    Color creamColor = Color.fromRGBO(255, 253, 208, 1.0);
    Color darkcream =Vx.gray800;
    Color lightbluish = Vx.indigo500;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ButtonBar( alignment:MainAxisAlignment.spaceBetween,children: [
                                      "\$${object.price}".text.bold.red800.xl4.make(),
        Obx(()=>
           ElevatedButton(onPressed: (){
            if(controller.temp.contains(object)){
              controller.temp.remove(object);
              controller.price.value-=object.price as int;
              print(controller.price.value);

            }else{
              controller.temp.add(object);
              controller.price.value+=object.price as int;
              print(controller.price.value);

            }
          },style: ButtonStyle(shape:MaterialStatePropertyAll(StadiumBorder()),backgroundColor: MaterialStatePropertyAll(VxContextExtensions(context).theme.floatingActionButtonTheme.backgroundColor)),
                         child: controller.temp.contains(object)?Icon(CupertinoIcons.cart_badge_minus):"Add To Cart".text.make()).wh(120,50),
        )],

        ).p8().color(VxContextExtensions(context).theme.cardColor),

      body: Scaffold(backgroundColor: context.canvasColor,
        body: SafeArea(child: Column(
                              children: [
                              Hero(tag: Key(object.imageurl),
                                  child: Image.network(object.imageurl,height: 300)).h32(context),
                              Expanded(child: VxArc(height: 30,edge: VxEdge.TOP,arcType: VxArcType.CONVEY,
                                      child: Container(color: (VxContextExtensions(context).theme.cardColor),width: context.screenWidth,
                                              child: Column(
                                                      children: [
                                                        object.name.text.bold.xl4.make(),
                                                        object.descprition.text.capitalize.textStyle(context.captionStyle).xl.make(),
                                                        "Smartphones have become an indispensable part of our lives, revolutionizing the way we communicate, work, and entertain ourselves. With their advanced features, sleek designs, and powerful processors, smartphones have transformed the way we access information and stay connected with the world around us."
                                                        .text.lg.textStyle(context.captionStyle).make().py16().py24()
                                              ],).py20().p20(),)))
          ],
        )),
      ),);
  }


}