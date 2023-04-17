// ignore_for_file: file_names, implementation_imports, unused_import, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DataTableWidget extends StatefulWidget {
  const DataTableWidget({Key? key}) : super(key: key);

  @override
  State<DataTableWidget> createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: DataTable(
          columns: [
            DataColumn(label: Text('No')),
            DataColumn(label: Text('Nama')),
            DataColumn(label: Text('Nim')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Agus')),
              DataCell(Text('2201010197')),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('Farhan')),
              DataCell(Text('2201010197')),
            ]),
          ],
        ),
      ),
    );
  }
}
