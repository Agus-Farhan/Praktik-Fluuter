// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class KalkulatorSederhana extends StatefulWidget {
  const KalkulatorSederhana({super.key});

  @override
  State<KalkulatorSederhana> createState() => _KalkulatorSederhanaState();
}

class _KalkulatorSederhanaState extends State<KalkulatorSederhana> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController angkaSatu = TextEditingController();
  TextEditingController angkaDua = TextEditingController();
  int Hasil = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 89, 0, 255),
        title: Text(
          'Kalkulator',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.right, // mengatur posisi teks ke kiri
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 15, 16, 29),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
            ),
            TextFormField(
              controller: angkaSatu,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              decoration: InputDecoration(
                label: Text(
                  'Angka Satu',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                hintText: 'Masukkan Angka Satu',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            TextFormField(
              controller: angkaDua,
              style: TextStyle(
                color: Color.fromARGB(
                    255, 255, 255, 255), // Ubah warna teks menjadi merah
              ),
              decoration: InputDecoration(
                label: Text(
                  'Angka Dua',
                  style: TextStyle(
                    color: Color.fromARGB(
                        255, 255, 255, 255), // Ubah warna teks menjadi merah
                  ),
                ),
                hintText: 'Masukkan Angka Dua',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
