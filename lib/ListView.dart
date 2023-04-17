// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';

class MenuListView extends StatefulWidget {
  const MenuListView({super.key});

  @override
  State<MenuListView> createState() => _MenuListViewState();
}

class _MenuListViewState extends State<MenuListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: Container(
        child: ListView(
          //tentukan jenis scroll
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 100,
              width: 200,
              child: Image.asset('assets/images/fikri.jpg'),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 100,
              width: 200,
              child: Image.asset('assets/images/fikri.jpg'),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 100,
              width: 200,
              child: Image.asset('assets/images/fikri.jpg'),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 100,
              width: 200,
              child: Image.asset('assets/images/fikri.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
