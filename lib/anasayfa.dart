import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(children: [
          Center(
            child: Text("Merhaba"),
          )
        ]),
      ),
    );
  }
}
