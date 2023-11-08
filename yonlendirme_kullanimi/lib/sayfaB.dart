import 'package:flutter/material.dart';
import 'package:yonlendirme_kullanimi/sayfaA.dart';
import 'package:yonlendirme_kullanimi/sayfaY.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {

  Future<bool> geriDonusTusu(BuildContext context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaA(),));
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: Text("Şuan Sayfa B"),),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaY(),));
              //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  SayfaY(),));
              },
                child: Text("Git > Y",style: TextStyle(backgroundColor: Colors.red,color: Colors.white,fontSize: 40),),),

            ],
          ),
        ),
      ),
    );
  }
}
