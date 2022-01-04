import 'package:flutter/material.dart';
import 'package:todolist_/page/home_page.dart';
import 'package:todolist_/src/app.dart';

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(currentAccountPicture: CircleAvatar(),
              accountName: Text('Mathan siva'), 
              accountEmail: Text('Mathansiv@gmail.com'),
              decoration:BoxDecoration(color: Colors.blueAccent)
              ), 
              ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage())),

              ),
             
              
         ],
        ),
      ),
    );
  }
}