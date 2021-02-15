import 'package:flutter/material.dart';

import 'anasayfa.dart';
import 'havayolu.dart';
import 'kemikyolu.dart';
import 'timpano.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.home_filled)),
              Tab(icon: Icon(Icons.headset)),
              Tab(icon: Icon(Icons.book_rounded)),
              Tab(icon: Icon(Icons.east)),
            ]),
            title: Text("Odyo Hesaplama"),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Text("Odyo Hesaplama"),
                  decoration: BoxDecoration(color: Colors.red),
                ),
                ListTile(
                  title: Text("Ana Sayfa"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Hakkımızda"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("İletişim"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              AnaEkran(),
              AnaEkran2(),
              AnaEkran3(),
              AnaEkran4(),
            ],
          ),
        ),
      ),
    );
  }
}
