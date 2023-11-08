import 'package:flutter/material.dart';
import 'package:yonlendirme_kullanimi/sayfaA.dart';
import 'package:yonlendirme_kullanimi/sayfaX.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(title: Text("Anasayfa"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SayfaA(),));
            },
              child: Text("Git > A",style: TextStyle(backgroundColor: Colors.red,color: Colors.white,fontSize: 40),),),
            TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SayfaX(),));
            },
                child: Text("Git > X",style: TextStyle(backgroundColor: Colors.red,color: Colors.white,fontSize: 40),),
            ),
          ],
        ),
      ),
    );
  }
}
