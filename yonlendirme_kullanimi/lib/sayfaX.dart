import 'package:flutter/material.dart';
import 'package:yonlendirme_kullanimi/Anasayfa.dart';
import 'package:yonlendirme_kullanimi/sayfaY.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({super.key});

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {

  Future<bool> geriDonusTusu(BuildContext context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa(),));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(title: Text("Şuan Sayfa X"),),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SayfaY(),));
              },
                child: Text("Git > Y",style: TextStyle(backgroundColor: Colors.red,color: Colors.white,fontSize: 40),),),

            ],
          ),
        ),
      ),
    );
  }
}
