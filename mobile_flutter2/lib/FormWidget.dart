import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final formKey = GlobalKey<FormState>();
  TextEditingController angkaSatu = TextEditingController();
  TextEditingController angkaDua = TextEditingController();
  int jumlah = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          TextFormField(
            controller: angkaSatu,
            decoration: InputDecoration(
              label: Text('Angka Satu'),
              hintText: 'Masukkan Angka Satu',
            ),
          ),
          TextFormField(
            controller: angkaDua,
            decoration: InputDecoration(
              label: Text('Angka Dua'),
              hintText: 'Masukkan Angka Dua',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  jumlah = int.parse(angkaSatu.text) - int.parse(angkaDua.text);
                });
              },
              child: Text('Tampilkan Pengurangan')),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  jumlah = int.parse(angkaSatu.text) + int.parse(angkaDua.text);
                });
              },
              child: Text('Tampilkan Penjumlahan')),
          Text('NIm Anda:'),
          Text('$jumlah'),
        ]),
      ),
    );
  }
}
