import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  String nama;
  String nim;
  String ipk;

  String nilai() {
    double score = double.parse(ipk);
    if (score <= 4.00 && score > 3.66) {
      return "A";
    } else if (score <= 3.66 && score > 3.33) {
      return "A-";
    } else if (score <= 3.33 && score > 3.00) {
      return "B+";
    } else if (score <= 3.00 && score > 2.66) {
      return "B";
    } else if (score <= 2.66 && score > 2.33) {
      return "B-";
    } else if (score <= 2.33 && score > 2.00) {
      return "C+";
    } else if (score <= 2.00 && score > 1.66) {
      return "C";
    } else if (score <= 1.66 && score > 1.33) {
      return "C-";
    } else if (score <= 1.33 && score > 1.00) {
      return "D+";
    } else if (score == 1.00) {
      return "D";
    } else {
      return "invalid";
    }
  }

  ResultPage({this.nama, this.nim, this.ipk});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Application"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.sticky_note_2_rounded,
              color: Colors.indigo,
              size: 150,
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 30),
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Nama    : ",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(nama, style: TextStyle(fontSize: 25))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("NIM       : ", style: TextStyle(fontSize: 25)),
                        Text(nim, style: TextStyle(fontSize: 25))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("IPK        : ", style: TextStyle(fontSize: 25)),
                      Text(nilai(), style: TextStyle(fontSize: 25))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
