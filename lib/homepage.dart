// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            onPressed: () {},
            child: Text("Write"),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {},
            child: Text("Read"),
          ),
          MaterialButton(
            color: Colors.red,
            onPressed: () {},
            child: Text("Delete"),
          ),
        ],
      ),
    ));
  }
}
