import 'package:flutter/material.dart';
import 'package:practica_3/pages/configuraciones.dart';

class MyUbicacion extends StatefulWidget {
  const MyUbicacion({super.key});

  @override
  State<MyUbicacion> createState() => _MyUbicacionState();
}

class _MyUbicacionState extends State<MyUbicacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi ubicación',
              style: TextStyle(
                color: Colors.white,
              )),
          toolbarHeight: 57,
          backgroundColor: Color.fromARGB(150, 21, 216, 118),
          shadowColor: Colors.black,
          elevation: 14,
          //shadowColor: Colors.white,

          leading: const Icon(
            Icons.account_circle,
            color: Color.fromARGB(252, 0, 0, 0),
            size: 60,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 50,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Myconfiguraciones()));
              },
            )
          ],
        ),
        body: Column(
          children: [
            Botoncitos(
              subtitle2: 'Lampa',
              subtitle: '',
              titulo: Container(
                child: Text(
                  'Distrito',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Botoncitos(
                subtitle2: 'Arequipa',
                subtitle: '',
                titulo: Container(
                  child: Text(
                    'Pais',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                )),
            Botoncitos(
                subtitle2: 'Perú',
                subtitle: '',
                titulo: Container(
                  child: Text(
                    'Provincia',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                )),
            Botoncitos(
              subtitle2: '',
              subtitle: '',
              titulo: Container(
                child: Row(children: [
                  Column(
                    children: [
                      Text(
                        'IP    ',
                      ),
                      Text(
                        '**********',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(bottom: 50, left: 150, top: 0),
                    child: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 50,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Myconfiguraciones()));
                      },
                    ),
                  )
                ]) //Text(subdata, style: TextStyle(fontSize: 18)),

                ,
              ),
            ),
          ],
        ));
  }
}

// estos son los botones es el modelo qque nos permiet ponder hacer esos 4 botones

class Botoncitos extends StatelessWidget {
  final Container titulo;
  final String subtitle;
  final String subtitle2;

  const Botoncitos({
    required this.titulo,
    required this.subtitle,
    required this.subtitle2,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 110,
        child: ListTile(
          contentPadding: EdgeInsets.only(top: 35, left: 20),

          

          title: titulo,
          subtitle: Container(
            margin: const EdgeInsets.only(top: 0, bottom: 50),
            alignment: Alignment.bottomLeft,
            child: Column(
              children: [
                Text(subtitle2),
              ],
            ),
          ),
        ));
  }
}
