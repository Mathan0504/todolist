import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_/page/home_page.dart';
import 'package:todolist_/provider/todos.dart';
import 'package:todolist_/helpers/drawer_navigation.dart';
import 'package:todolist_/src/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Todo App';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Color(0xFFf6f5ee),
          ),
          home: HomePage(),
          
         
        ),
      );
   
}

