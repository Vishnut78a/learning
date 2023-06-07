import 'package:flutter/material.dart';
import 'package:learning/models/catalog.dart';

import '../widgets/drawer.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final products =[new Catalog('v', 'iPhone X', 'Apple iPhone 10th generation', 500, '33505a', "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQOfw0uRHkm28exE-W9S8dQCzMKqvYX-LwTRKjGv-o_Z0PvUn5AMedOq9Muuubde_1cyHKBDN76Yg2iHsn3328wUzZ6PX3C9UiHFppsCrFX5IL6NRuMfs2Pjw&usqp=CAE"),
                     new Catalog("vishnu","iPhone 12 Pro Max", "Apple iPhone 12th generation", 1200, '33505a', 'https://img5.gadgetsnow.com/gd/images/products/additional/large/G201718_View_1/mobiles/smartphones/apple-iphone-12-pro-max-pacific-blue-128gb-.jpg'),
                     new Catalog("Vishnu", "iPhone 12 Pro", 'Apple iPhone 12th generation',999 , '33505a', 'https://cdn.dxomark.com/wp-content/uploads/medias/post-61584/iphone-12-pro-max-graphite-hero-1024x768.jpg'),
                     new Catalog("Vishnu1", "iPhone 12 ", 'Apple iPhone 12th generation', 899, '33505a', 'https://m.media-amazon.com/images/I/71hIfcIPyxS._SX679_.jpg'),
                     new Catalog("google", "Pixel 3", "Pixel 3rd generation", 400, "33505a","https://m.media-amazon.com/images/I/718ynShMnpL._SX679_.jpg" ),
                     new Catalog("vd", "Pixel 3a XL", "Pixel 3rd generation", 450, '33505a', "https://m.media-amazon.com/images/I/71WCmrY3Q+L._SX679_.jpg"),
                     new Catalog('d', "Pixel 4", "Pixel 4th generation", 500, '33505a','https://m.media-amazon.com/images/I/61nJq44iMLL._SX679_.jpg' ),
                     new Catalog('d', "Pixel 4a", "Pixel 4th generation", 480, '33505a','https://m.media-amazon.com/images/I/7199N-Uz2AL._SX679_.jpg' ),
                     new Catalog('d', "Pixel 4 XL", "Pixel 4th generation", 580, '33505a','https://cdn.shopify.com/s/files/1/0598/7919/4823/products/71oTy_incwL._SS640.jpg?v=1664886375' ),
                     new Catalog('d', "Pixel 6", "Pixel 6th generation", 600, '33505a',"https://m.media-amazon.com/images/I/61ruKkvVIxL._SX679_.jpg" ),
                     new Catalog('d', "Pixel 6a", "Pixel 6th generation", 590, '33505a', "https://m.media-amazon.com/images/I/314423cfIVL.jpg"),
                     new Catalog('d', "Pixel 6 Pro ", "Pixel 6th generation", 400, '33505a', "https://m.media-amazon.com/images/I/41x6M8sd69L._SX300_SY300_QL70_FMwebp_.jpg"),
                     new Catalog('d', "OnePlus 6T ", "OnePlus 6th generation", 450, '33505a', "https://m.media-amazon.com/images/I/41fBRgy0ipL._SX300_SY300_QL70_FMwebp_.jpg"),
                     new Catalog('d', "OnePlus 6 ", "OnePlus 6th generation", 390, '33505a', "https://m.media-amazon.com/images/I/81-btS1UL3L._SY741_.jpg"),
                     new Catalog('d', "OnePlus 5 ", "OnePlus 5th generation", 350, '33505a', "https://m.media-amazon.com/images/I/41UiS3t+ptL._SY300_SX300_.jpg"),
                     new Catalog('d', "OnePlus 8 ", "OnePlus 8th generation", 550, '33505a', "https://m.media-amazon.com/images/I/71KJ3loLvyL._SX679_.jpg"),
                     new Catalog('d', "OnePlus 8T ", "OnePlus 8th generation", 590, '33505a', "https://m.media-amazon.com/images/I/41gsEWSkE1L._SX300_SY300_QL70_FMwebp_.jpg"),
      new Catalog('v', 'iPhone X', 'Apple iPhone 10th generation', 500, '33505a', "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQOfw0uRHkm28exE-W9S8dQCzMKqvYX-LwTRKjGv-o_Z0PvUn5AMedOq9Muuubde_1cyHKBDN76Yg2iHsn3328wUzZ6PX3C9UiHFppsCrFX5IL6NRuMfs2Pjw&usqp=CAE"),
      new Catalog("vishnu","iPhone 12 Pro Max", "Apple iPhone 12th generation", 1200, '33505a', 'https://img5.gadgetsnow.com/gd/images/products/additional/large/G201718_View_1/mobiles/smartphones/apple-iphone-12-pro-max-pacific-blue-128gb-.jpg'),
      new Catalog("Vishnu", "iPhone 12 Pro", 'Apple iPhone 12th generation',999 , '33505a', 'https://cdn.dxomark.com/wp-content/uploads/medias/post-61584/iphone-12-pro-max-graphite-hero-1024x768.jpg'),
      new Catalog("Vishnu1", "iPhone 12 ", 'Apple iPhone 12th generation', 899, '33505a', 'https://m.media-amazon.com/images/I/71hIfcIPyxS._SX679_.jpg'),
      new Catalog("google", "Pixel 3", "Pixel 3rd generation", 400, "33505a","https://m.media-amazon.com/images/I/718ynShMnpL._SX679_.jpg" ),
      new Catalog("vd", "Pixel 3a XL", "Pixel 3rd generation", 450, '33505a', "https://m.media-amazon.com/images/I/71WCmrY3Q+L._SX679_.jpg"),
      new Catalog('d', "Pixel 4", "Pixel 4th generation", 500, '33505a','https://m.media-amazon.com/images/I/61nJq44iMLL._SX679_.jpg' ),
      new Catalog('d', "Pixel 4a", "Pixel 4th generation", 480, '33505a','https://m.media-amazon.com/images/I/7199N-Uz2AL._SX679_.jpg' ),
      new Catalog('d', "Pixel 4 XL", "Pixel 4th generation", 580, '33505a','https://cdn.shopify.com/s/files/1/0598/7919/4823/products/71oTy_incwL._SS640.jpg?v=1664886375' ),
      new Catalog('d', "Pixel 6", "Pixel 6th generation", 600, '33505a',"https://m.media-amazon.com/images/I/61ruKkvVIxL._SX679_.jpg" ),
      new Catalog('d', "Pixel 6a", "Pixel 6th generation", 590, '33505a', "https://m.media-amazon.com/images/I/314423cfIVL.jpg"),
      new Catalog('d', "Pixel 6 Pro ", "Pixel 6th generation", 400, '33505a', "https://m.media-amazon.com/images/I/41x6M8sd69L._SX300_SY300_QL70_FMwebp_.jpg"),
      new Catalog('d', "OnePlus 6T ", "OnePlus 6th generation", 450, '33505a', "https://m.media-amazon.com/images/I/41fBRgy0ipL._SX300_SY300_QL70_FMwebp_.jpg"),
      new Catalog('d', "OnePlus 6 ", "OnePlus 6th generation", 390, '33505a', "https://m.media-amazon.com/images/I/81-btS1UL3L._SY741_.jpg"),
      new Catalog('d', "OnePlus 5 ", "OnePlus 5th generation", 350, '33505a', "https://m.media-amazon.com/images/I/41UiS3t+ptL._SY300_SX300_.jpg"),
      new Catalog('d', "OnePlus 8 ", "OnePlus 8th generation", 550, '33505a', "https://m.media-amazon.com/images/I/71KJ3loLvyL._SX679_.jpg"),
      new Catalog('d', "OnePlus 8T ", "OnePlus 8th generation", 590, '33505a', "https://m.media-amazon.com/images/I/41gsEWSkE1L._SX300_SY300_QL70_FMwebp_.jpg"),

    ];
    return Scaffold(
      appBar: AppBar( title:Text("Catalog App",style: TextStyle(color: Colors.black87),),backgroundColor: Colors.white,iconTheme: IconThemeData(color: Colors.black),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(itemCount: products.length, itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(leading: Image.network(products[index].imageurl,height: 50,width: 50,),
                    title: Text(products[index].name),
                    subtitle: Text(products[index].descprition),
                     trailing: Text("\$${products[index].price}"),),
          );
        }, ),
      ),
      drawer: MyDrawer(),
    );
  }


}