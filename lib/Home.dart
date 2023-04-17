// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text('Home Farhan'),
          actions: [Icon(Icons.search)],
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Stack(
          children: [
            Container(
              height: 800,
              color: Colors.amber,
            ),
            Container(
              height: 500,
              color: Colors.blueGrey,
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
          ],
        ));
  }
}
