import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Drawer(
              child: Container(color: Colors.blue,
                child: ListView(children: [UserAccountsDrawerHeader(accountName: Text('Vishnu'),decoration: BoxDecoration(color: Colors.blue), accountEmail: Text("vishnunair20012112@gmail.com"),
                                                                   currentAccountPicture: CircleAvatar(backgroundImage:AssetImage('asset/eren.png'),),),
                  ListTile(leading: Icon(CupertinoIcons.home,color: Colors.white,),title: Text("Home",style: TextStyle(color: Colors.white),),),
                  ListTile(leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),title: Text('Profile',style: TextStyle(color: Colors.white),)),
                  ListTile(leading: Icon(Icons.mail_outlined,color: Colors.white,),title: Text('E-mail',style: TextStyle(color: Colors.white),),),
                  ]),
              ),
    );
  }

}

