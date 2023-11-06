// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //creating a reference for our box

  final _myBox = Hive.box('myBox');

  //write data
  void writeData() {
    _myBox.put(1, 'Gauransh'); //key value pair
    _myBox.put(2, ['Red', 'Blue', 'Green']);
  }


  //read data
  void readData() {
    print(_myBox.get(1));
    print(_myBox.get(2));
  }

  //delete data
  void deleteData() {
    _myBox.delete(1);
    _myBox.delete(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.green,
            onPressed: () {
              writeData();
            },
            child: Text("Write"),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              readData();
            },
            child: Text("Read"),
          ),
          MaterialButton(
            color: Colors.red,
            onPressed: () {
              deleteData();
            },
            child: Text("Delete"),
          ),
        ],
      ),
    ));
  }
}
