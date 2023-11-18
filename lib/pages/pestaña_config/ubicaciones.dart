import 'package:flutter/material.dart';
import 'package:practica_3/pages/configuraciones.dart';
import 'package:practica_3/widgets/drawer.dart';

class MyUbicacion extends StatefulWidget {
  const MyUbicacion({super.key});

  @override
  State<MyUbicacion> createState() => _MyUbicacionState();
}

class _MyUbicacionState extends State<MyUbicacion> {
  final latidud ='-300,9898,303';
  final longitud ='-300,9898,303';
  
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
        drawer: Drawer(child: MyDrawer()),
        body: Container(
          child: SingleChildScrollView(
          child: Column(
          children: [
            Botoncitos(
              subtitle2: 'Lampa',
              subtitle: 'Distrito',
              icono: Icon(Icons.group_remove_rounded,color: Color.fromARGB(255, 0, 0, 0),size: 50),
             titulo: IconButton(onPressed: null, icon: Icon(null),)
            ),
            Botoncitos(
                subtitle2: 'Arequipa',
                subtitle: 'Departamento',
                icono: Icon(Icons.group_remove_rounded,color: Color.fromARGB(255, 0, 0, 0),size: 50),
                titulo: IconButton(onPressed: null, icon: Icon(null),)
                ),
            Botoncitos(
                subtitle2: 'Perú',
                subtitle: 'Pais',
                icono: Icon(Icons.group_remove_rounded,color: Color.fromARGB(255, 0, 0, 0),size: 50),
               titulo: IconButton(onPressed:null, icon: Icon(null),)
               ),
             Botoncitos(
                subtitle2: longitud,
                subtitle: 'Longitud',
                icono: Icon(Icons.group_remove_rounded,color: Color.fromARGB(255, 0, 0, 0),size: 50),
                titulo: IconButton(onPressed: null, icon: Icon(null),
                
                ),),
               Botoncitos(
                subtitle2: latidud,
                subtitle: 'Latitud',
                icono: Icon(Icons.group_remove_rounded,color: Color.fromARGB(255, 0, 0, 0),size: 50),
                titulo: IconButton(onPressed:null, icon: Icon(null),
                  
                )),
            Botoncitos(
              subtitle2: '********',
              subtitle: 'IP                          ',
              icono: Icon(Icons.group_remove_rounded,color: Color.fromARGB(255, 0, 0, 0),size: 50),
              titulo:IconButton(
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
                    )),
  ]))));}
  
}

// estos son los botones es el modelo qque nos permiet ponder hacer esos 4 botones

class Botoncitos extends StatelessWidget {
  final IconButton titulo;
  final Icon icono;
  final String subtitle;
  final String subtitle2;
  //final Icons icon;
  

  const Botoncitos({
    required this.titulo,
    required this.subtitle,
    required this.subtitle2,
    required this.icono,
    //required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListTile(
          contentPadding: EdgeInsets.only(top: 35, left: 20),

          

          title: Container(
                child: Row(children: [

                  Container(
                    margin:
                        const EdgeInsets.only(bottom: 0, right: 28, top: 0),
                    child: 
                     icono,

                   
                  ),
                  Column(
                    children: [
                      Text(subtitle, style: TextStyle(fontSize: 20),),
                    ],
                  ),

                  Container(
                    margin:
                        const EdgeInsets.only(bottom: 50, left: 0, top: 0),
                    child: titulo,
                  )
                ]) //Text(subdata, style: TextStyle(fontSize: 18)),

                ,
              ),


          subtitle: Container(
            margin: const EdgeInsets.only(top: 0, bottom: 0,left: 80),
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
