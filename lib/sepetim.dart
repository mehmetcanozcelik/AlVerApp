// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  const Sepetim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple[700]),
          ),
        ),
        ListTile(
          title: Text("Magnum Cookie"),
          subtitle: Text("1 adet x 7.50 TL"),
          trailing: Text("7.50 TL"),
        ),
        ListTile(
          title: Text("Barilla Makarna"),
          subtitle: Text("2 adet x 5.50 TL"),
          trailing: Text("11 TL"),
        ),
        ListTile(
          title: Text("Damla Su 5LT"),
          subtitle: Text("2 adet x 5.75 TL"),
          trailing: Text("11.50 TL"),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                children: [
                  Text(
                    "Toplam Tutar",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[700],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "30 TL",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.purple[700],
            ),
            child: Center(
              child: Text(
                "Alışverişi Tamamla",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
