

class Catalog  {
  static List<Catalog> items = [];

  int id ;
  String name ;
  String descprition ;
  num price ;
  String color ;
  String imageurl ;


  Catalog({required this.id, required this.name, required this.descprition, required this.price, required this.color,
      required this.imageurl});

 factory Catalog.fromMap(Map<String,dynamic> map){
   return Catalog(
       id: map["id"],
       name: map["name"],
       descprition: map["descprition"],
       price: map["price"],
       color: map["color"],
       imageurl: map["imageurl"],


   );
 }

}