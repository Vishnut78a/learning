

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:learning/pages/homepage.dart';

import '../models/catalog.dart';

class Controller extends GetxController {

RxList<Catalog> itemlist =<Catalog>[].obs;
RxList<Catalog> backupitemlist = <Catalog>[].obs;
RxList<Catalog> helperlist = <Catalog>[].obs;
RxList<Catalog> temp = <Catalog>[].obs;
RxInt price = 0.obs;
RxBool searchquery = false.obs;
RxString searchedItemName = "".obs;
Rx<TextEditingController> textEditingController = TextEditingController().obs;
 Future<RxList<Catalog>> loaad() async{
  var response= await rootBundle.loadString("asset/catalo.json");
  var decodeddata = jsonDecode(response);
  List<dynamic> productsdata = decodeddata['product'];

 itemlist.value=  productsdata.map((item)=>Catalog.fromMap(item)).toList() ;
 backupitemlist.value=itemlist.value;
 helperlist.value= itemlist.value;
  print("backup"+itemlist.value.toString());
  print(itemlist);
  print(itemlist.length);
  return itemlist;
}
}