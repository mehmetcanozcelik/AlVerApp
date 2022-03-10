// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, override_on_non_overriding_member, deprecated_member_use, prefer_const_literals_to_create_immutables, avoid_print, annotate_overrides, non_constant_identifier_names, prefer_final_fields, unused_field

import 'package:ffmarket/sepetim.dart';
import 'package:ffmarket/urunler.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _aktifIcerikNo = 0;
  List<Widget> icerikler = [
    Urunler(),
    Sepetim(),
  ];
  @override
  void initstate() {
    super.initState();

    icerikler = [
      Urunler(),
      Sepetim(),
    ];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.purple[700]),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Al-Ver",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.purple[700],
          ),
        ),
      ),
      body: icerikler[_aktifIcerikNo],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mehmet Can Özçelik"),
              accountEmail: Text(
                "mehmetcanozcelik88@gmail.com",
              ),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://media-exp1.licdn.com/dms/image/C4D03AQEz47xRcDId0A/profile-displayphoto-shrink_200_200/0/1621502623033?e=1639612800&v=beta&t=SG1DsZxEytFXu6r3RnRBfa70hSRHqdKGXT-eMC2hDZs"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              decoration: BoxDecoration(color: Colors.purple[700]),
            ),
            ListTile(
              title: Text("Siparişlerim"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Kampanyalar"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Ayarlar"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Çıkış Yap"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerikNo,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Ürünler")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("Sepetim"))
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}
