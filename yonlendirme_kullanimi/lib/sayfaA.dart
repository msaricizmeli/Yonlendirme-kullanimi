import 'package:flutter/material.dart';
import 'package:yonlendirme_kullanimi/Anasayfa.dart';
import 'package:yonlendirme_kullanimi/sayfaB.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {

  Future<bool> geriDonusTusu(BuildContext context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa(),));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("Şuan Sayfa A"),),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SayfaB(),));
              },
                child: Text("Git > B",style: TextStyle(backgroundColor: Colors.red,color: Colors.white,fontSize: 40),),),

            ],
          ),
        ),
      ),
    );

  }
}
