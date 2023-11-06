import 'package:flutter/material.dart';
import 'package:hello_hive/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //initializing hive

  await Hive.initFlutter();

  // open the box (basically a table in the database)

  var box = await Hive.openBox('myBox');
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
