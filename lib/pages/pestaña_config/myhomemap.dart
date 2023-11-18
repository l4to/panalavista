import 'package:flutter/material.dart';
import 'package:practica_3/pages/pesta%C3%B1a_config/simple_map_screen.dart';
import 'package:practica_3/pages/pesta%C3%B1a_config/ubicaciones.dart';

class Myhomemap extends StatefulWidget {
  const Myhomemap({super.key});

  @override
  State<Myhomemap> createState() => _MyhomemapState();
}

class _MyhomemapState extends State<Myhomemap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter map simple'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child:Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return const MyUbicacion();
              }));
            },
             child: const Text('simplescrim'))
          ],
        )
      ),
    );
  }
}
