// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Mytugas extends StatefulWidget {
  const Mytugas({super.key});

  @override
  State<Mytugas> createState() => _MytugasState();
}

class _MytugasState extends State<Mytugas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Home Farhan'),
        actions: [Icon(Icons.search)],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Container(
          transform: Matrix4.rotationZ(0.1),
          padding: EdgeInsets.only(left: 1, right: 0, top: 0, bottom: 20),
          margin: EdgeInsets.only(left: 100, right: 0, top: 10, bottom: 0),
          height: 250,
          width: 250,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Text(
            'Hai, Agus Farhan',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}
