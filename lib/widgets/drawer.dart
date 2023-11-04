import 'package:flutter/material.dart';
import 'package:practica_3/pages/Inicio2.dart';
import 'package:practica_3/pages/configuraciones.dart';
import 'package:practica_3/pages/panaderias.dart';
import 'package:practica_3/pages/valoracion.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Pan a la vista"),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                    child: Image.asset(
                  "assets/images/logo.jpg",
                )),
              ),
              decoration: BoxDecoration(color: Colors.green),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyLogeo(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.breakfast_dining),
              title: Text("Panaderias"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MiPanaderia(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.stars),
              title: Text("Valoracion"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyValoracion(),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configuracion"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Myconfiguraciones(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
