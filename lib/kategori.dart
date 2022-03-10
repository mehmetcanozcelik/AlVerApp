// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors

import 'package:ffmarket/urun_detay.dart';
import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key? key, required this.kategori}) : super(key: key);

  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekListe = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.teal,
    ),
  ];

  @override
  void initState() {
    super.initState();

    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = [
        urunKarti(
          "Komili Zeytin Yağı",
          "24.90 TL",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/04133401/04133401-ddce28-1650x1650.jpg",
          mevcut: true,
        ),
        urunKarti("Filiz Fiyonk Makarna", "4.75 TL",
            "https://productimages.hepsiburada.net/s/32/375/10364948873266.jpg",
            mevcut: true),
        urunKarti("Yayla Baldo Pirinç", "18.90 TL",
            "https://productimages.hepsiburada.net/s/23/1500/9989343215666.jpg",
            mevcut: true),
        urunKarti("Tat Domates Salçası", "13.95 TL",
            "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/09010020/09010020-d107d5-1650x1650.png"),
      ];
    } else if (widget.kategori == "Atıştırmalık") {
      gosterilecekListe = [
        urunKarti("Ülker Sütlü Çikolata", "5.75 TL",
            "https://productimages.hepsiburada.net/s/26/500/10145525137458.jpg",
            mevcut: true),
        urunKarti("Lays Klasik", "8.90 TL",
            "https://cdnprod.mopas.com.tr/sys-master-mopascdncontainer/h75/h3c/8842410885150/76953_0_521Wx521H",
            mevcut: true),
      ];
    } else if (widget.kategori == "İçecekler") {
      gosterilecekListe = [
        urunKarti("Erikli Su 1.5 LT", "3.65 TL",
            "https://productimages.hepsiburada.net/s/32/375/10377359818802.jpg",
            mevcut: true),
        urunKarti("Coca-Cola 2.5 LT", "10.90 TL",
            "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/08011600/08011600-30b4d8.jpg"),
        urunKarti("Lipton Ice Tea 2 LT", "6.90 TL",
            "https://productimages.hepsiburada.net/s/33/375/10417878073394.jpg",
            mevcut: true),
        urunKarti("Sütaş Ayran 1 LT", "7.90 TL",
            "https://reimg-carrefour.mncdn.com/mnresize/600/600/productimage/30096930/30096930_0_MC/8796979134514_1499978000456.jpg"),
      ];
    } else if (widget.kategori == "Kahvaltılık") {
      gosterilecekListe = [
        urunKarti("Sütaş Yarım Yağlı Süt 1 LT", "8.65 TL",
            "https://www.marketimgeldi.com/Uploads/UrunResimleri/buyuk/sutas-tam-yagli-sut-1-lt.-38874fbd.jpg",
            mevcut: true),
        urunKarti("İçim Kaşar Peyniri", "38.90 TL",
            "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/10108647/10108647-b9bf91-1650x1650.jpg",
            mevcut: true),
        urunKarti("CP 15li Yumurta", "24.90 TL",
            "https://iis-akakce.akamaized.net/p.z?%2F%2Fcdn%2Egetir%2Ecom%2Fproduct%2F5baa132d4621d1001e336d7f%5Ftr%5F1582126649140%2Ejpeg"),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UrunDetay(
                      isim: isim,
                      fiyat: fiyat,
                      resimYolu: resimYolu,
                      mevcut: mevcut,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: resimYolu,
              child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(resimYolu), fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              isim,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              fiyat,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple[700],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1,
      children: gosterilecekListe,
    );
  }
}
