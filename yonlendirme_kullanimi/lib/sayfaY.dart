import 'package:flutter/material.dart';
import 'package:yonlendirme_kullanimi/Anasayfa.dart';


class SayfaY extends StatefulWidget {
  const SayfaY({super.key});

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {

  Future<bool> geriDonusTusu(BuildContext context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa(),));
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text("Şuan Sayfa Y"),),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Anasayfaya dönmek için geri tuşuna bas"),
            ],
          ),
        ),
      ),
    );
  }
}
