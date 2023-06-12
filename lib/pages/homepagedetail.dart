import 'package:flutter/material.dart';
import 'package:learning/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class Homepagedetail extends StatelessWidget{
  String imageurl;

  Homepagedetail(this.imageurl, this.name, this.desc, this.price);

  String name;
  String desc;
  num price;


  @override
  Widget build(BuildContext context) {
    Color darkbluish = Color(0xff403b58);
    Color creamColor = Color.fromRGBO(255, 253, 208, 1.0);
    Color darkcream =Vx.gray800;
    Color lightbluish = Vx.indigo500;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ButtonBar( alignment:MainAxisAlignment.spaceBetween,children: [
                                      "\$${price}".text.bold.red800.xl4.make(),
        ElevatedButton(onPressed: (){},style: ButtonStyle(shape:MaterialStatePropertyAll(StadiumBorder()),backgroundColor: MaterialStatePropertyAll(context.theme.floatingActionButtonTheme.backgroundColor)),
                       child: "Add To Cart".text.make()).wh(120,50)],

        ).p8().color(context.theme.cardColor),

      body: Scaffold(backgroundColor: context.canvasColor,
        body: SafeArea(child: Column(
                              children: [
                              Hero(tag: Key(imageurl),
                                  child: Image.network(imageurl,height: 300)).h32(context),
                              Expanded(child: VxArc(height: 30,edge: VxEdge.TOP,arcType: VxArcType.CONVEY,
                                      child: Container(color: (context.theme.cardColor),width: context.screenWidth,
                                              child: Column(
                                                      children: [
                                                        name.text.bold.xl4.make(),
                                                        desc.text.capitalize.textStyle(context.captionStyle).xl.make(),
                                                        "Smartphones have become an indispensable part of our lives, revolutionizing the way we communicate, work, and entertain ourselves. With their advanced features, sleek designs, and powerful processors, smartphones have transformed the way we access information and stay connected with the world around us."
                                                        .text.lg.textStyle(context.captionStyle).make().py16().py24()
                                              ],).py20().p20(),)))
          ],
        )),
      ),);
  }


}