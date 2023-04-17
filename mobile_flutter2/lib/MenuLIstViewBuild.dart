// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';

class MenuListViewBuilder extends StatefulWidget {
  const MenuListViewBuilder({super.key});

  @override
  State<MenuListViewBuilder> createState() => _MenuListViewBuilderState();
}

class _MenuListViewBuilderState extends State<MenuListViewBuilder> {
  List<String> gambar = ['assets/images/images.jpeg', 'assets/images/Epic.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: gambar.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(5),
              height: 100,
              width: 200,
              child: Image.asset(gambar[index]),
            );
          },
        ),
      ),
    );
  }
}
