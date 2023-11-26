import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../models/catalog.dart';

class providerrclass  extends ChangeNotifier{
 int _index=0;
 List<Catalog> list2 = [];
 List<Catalog> list3 =[];

 /*void setindex(int value) {
    _index = value;
  }
  int get getindex => _index;
 */
 loaddata() async{
  await Future.delayed(Duration(seconds: 2));
  String catalogjson= await rootBundle.loadString("asset/catalo.json");

  var decodeddata=jsonDecode(catalogjson);

  var productsdata = decodeddata["product"];

  Catalog.items= List.from(productsdata).map<Catalog>((Items) => Catalog.fromMap(Items)).toList();
  list2=Catalog.items;
  print(list2.length+100);

 }






















 void remove(int index){
  list3.removeAt(index);
  notifyListeners();
 }

 void add(index){
  list3.add(index);
  notifyListeners();
 }









}