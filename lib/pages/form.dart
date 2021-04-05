// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tugas2_ptpm/pages/result.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
// deklarasi
  String nama;
  String nim;
  String ipk;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Application"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.sticky_note_2_rounded,
              color: Colors.indigo,
              size: 150,
            ),
            TextField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                labelText: 'Nama',
                hintText: 'Masukan Nama',
              ),
              autofocus: false,
              keyboardType: TextInputType.name,
              onChanged: (text) {
                nama = text;
              },
            ),
            TextField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.note),
                labelText: 'NIM',
                hintText: 'Masukan NIM',
              ),
              autofocus: false,
              keyboardType: TextInputType.number,
              onChanged: (text) {
                nim = text;
              },
            ),
            TextField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.format_list_numbered_sharp),
                labelText: 'IPK',
                hintText: 'Masukan IPK',
              ),
              autofocus: false,
              keyboardType: TextInputType.number,
              onChanged: (text) {
                ipk = text;
              },
            ),
            RaisedButton(
              color: Colors.indigo,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ResultPage(nama: nama, nim: nim, ipk: ipk)));
              },
              child: Text(
                "submit",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
