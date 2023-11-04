import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica_3/pages/pesta%C3%B1a_config/pesta%C3%B1a_cuenta.dart';
import 'package:practica_3/pages/pesta%C3%B1a_config/ubicaciones.dart';

class MyPestanaConfig extends StatefulWidget {
  const MyPestanaConfig({super.key});

  @override
  State<MyPestanaConfig> createState() => _MyPestanaConfig();
}

class _MyPestanaConfig extends State<MyPestanaConfig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Configuraciones',
              style: TextStyle(
                color: Colors.white,
              )),
          toolbarHeight: 57,
          backgroundColor: Color.fromARGB(150, 21, 216, 118),
          leading: const Icon(
            Icons.account_circle,
            color: Color.fromARGB(252, 0, 0, 0),
            size: 60,
          ),
        ),
        body: Column(
          children: [
            Botoncitos(
              figura: Icons.account_circle_outlined,
              titulo: 'Mi cuenta            ',
              presionar: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyCuenta()));
              },
              clikBoton: () {},
            ),
            Botoncitos(
              figura: Icons.add_location_alt_outlined,
              titulo: 'Mi ubicación       ',
              presionar: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyUbicacion()));
              },
              clikBoton: () {},
            ),
            Botoncitos(
              figura: Icons.door_back_door_outlined,
              titulo: 'Cerrar sesión      ',
              presionar: () {
                SystemNavigator.pop();
              },
              clikBoton: () {},
            ),
          ],
        ));
  }
}

// estos son los botones es el modelo qque nos permiet ponder hacer esos 4 botones

class Botoncitos extends StatelessWidget {
  final IconData figura;
  final String titulo;
  final VoidCallback presionar;
  //final Container boton;
  //final String textoBoton;
  final VoidCallback clikBoton;

  const Botoncitos({
    required this.figura,
    required this.titulo,
    required this.presionar,
    required this.clikBoton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListTile(
        contentPadding: EdgeInsets.only(top: 21, left: 14),

        leading: Icon(
          figura,
          color: Colors.black,
          size: 40,
        ),

        onTap: presionar,
        //shape: const RoundedRectangleBorder( side: BorderSide(color: Colors.black, width: 1),borderRadius: BorderRadius.zero,)
        

        title: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            titulo,
            style: TextStyle(fontSize: 17),
          ),
        ),
      ),
    );
  }
}
