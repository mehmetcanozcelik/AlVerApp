// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:ffmarket/kategori.dart';
import 'package:flutter/material.dart';

class Urunler extends StatefulWidget {
  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  var kontrolcu;

  @override
  void initState() {
    super.initState();
    kontrolcu = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            controller: kontrolcu,
            indicatorColor: Colors.purple[700],
            labelColor: Colors.purple[700],
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
            tabs: [
              Tab(
                child: Text("Temel Gıda"),
              ),
              Tab(
                child: Text("Atıştırmalık"),
              ),
              Tab(
                child: Text("İçecekler"),
              ),
              Tab(
                child: Text("Kahvaltılık"),
              ),
            ]),
        Expanded(
          child: TabBarView(controller: kontrolcu, children: [
            Kategori(
              kategori: "Temel Gıda",
            ),
            Kategori(
              kategori: "Atıştırmalık",
            ),
            Kategori(
              kategori: "İçecekler",
            ),
            Kategori(
              kategori: "Kahvaltılık",
            ),
          ]),
        )
      ],
    );
  }
}
