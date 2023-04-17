//TODO FLUTTER CALCUALTE

import 'package:flutter/material.dart';

class CalculatorWidget extends StatefulWidget {
  const CalculatorWidget({Key? key}) : super(key: key);

  @override
  _CalculatorWidgetState createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  final _formKey = GlobalKey<FormState>();
  final _angkaSatuController = TextEditingController();
  final _angkaDuaController = TextEditingController();
  String _operator = '+';
  int _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Kalkulator Sederhana',
            style: TextStyle(fontSize: 16, color: Colors.black)),
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _angkaSatuController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Angka Satu',
                  hintText: 'Masukkan Angka Satu',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan angka satu';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _angkaDuaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Angka Dua',
                  hintText: 'Masukkan Angka Dua',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon masukkan angka dua';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: '+',
                    groupValue: _operator,
                    onChanged: (value) {
                      setState(() {
                        _operator = value.toString();
                      });
                    },
                  ),
                  Text('+'),
                  SizedBox(width: 16.0),
                  Radio(
                    value: '-',
                    groupValue: _operator,
                    onChanged: (value) {
                      setState(() {
                        _operator = value.toString();
                      });
                    },
                  ),
                  Text('-'),
                  SizedBox(width: 16.0),
                  Radio(
                    value: '*',
                    groupValue: _operator,
                    onChanged: (value) {
                      setState(() {
                        _operator = value.toString();
                      });
                    },
                  ),
                  Text('x'),
                  SizedBox(width: 16.0),
                  Radio(
                    value: '/',
                    groupValue: _operator,
                    onChanged: (value) {
                      setState(() {
                        _operator = value.toString();
                      });
                    },
                  ),
                  Text(':'),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      int angkaSatu = int.parse(_angkaSatuController.text);
                      int angkaDua = int.parse(_angkaDuaController.text);
                      if (_operator == '+') {
                        _result = angkaSatu + angkaDua;
                      } else if (_operator == '-') {
                        _result = angkaSatu - angkaDua;
                      } else if (_operator == '*') {
                        _result = angkaSatu * angkaDua;
                      } else if (_operator == '/') {
                        _result = angkaSatu ~/ angkaDua;
                      }
                    });
                  }
                },
                child: Text('Hitung'),
              ),
              SizedBox(height: 16.0),
              Text('Hasil: $_result'),
            ],
          ),
        ),
      ),
    );
  }
}
