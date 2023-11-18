import 'package:flutter/material.dart';
import 'package:practica_3/pages/configuraciones.dart';
import 'package:practica_3/pages/pesta%C3%B1a_config/pesta%C3%B1a_config.dart';
import 'package:practica_3/widgets/drawer.dart';

class MyCuenta extends StatefulWidget {
  const MyCuenta({super.key});
  

  @override
  State<MyCuenta> createState() => _MyCuentaState();
}



class _MyCuentaState extends State<MyCuenta> {

   final List<String> tasks = <String>[];
  final nombre = TextEditingController();
  final apellido = TextEditingController();
  final correo = TextEditingController();
  final contrasena =TextEditingController();

  _iddItem(value){
              correo.clear();
              setState(() {
                tasks.add(value);
              });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi cuenta',
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
        body:Container(
          child: SingleChildScrollView(
            child: Column(
          children: [
            Botoncitos(
              titulo: 'Nombre',
              subdata: TextField(
                  controller:nombre 
              ),
              clikBoton: () {
                
              },
            ),
            Botoncitos(
              clikBoton: () {
              },
              titulo: 'Apellido',
              subdata: TextField(
                keyboardType:TextInputType.text ,
                  controller:apellido,
                  onSubmitted:_iddItem ,
              ),
              
              
              
            ),
            Botoncitos(
              titulo: 'Correo  ',
              subdata: TextField(
                keyboardType: TextInputType.emailAddress,
                  controller:correo,),
              clikBoton: () {},
            ),
            Botoncitos(
              titulo: 'Codigo ',
              subdata: TextField(
                keyboardType: TextInputType.visiblePassword,
                  controller:contrasena ,
              ),
              clikBoton: () {},
            ),
            Botoncitos2(
                titulo2: "boton",
                presionar2: () {},
                clikBoton2: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyCuenta()));
                },
                subdata2: 'hola')
          ],
        ))));
  }
}

// estos son los botones es el modelo qque nos permiet ponder hacer esos 4 botones

class Botoncitos extends StatelessWidget {
  final String titulo;
  //final Row texto;
  //final Container boton;
  final TextField subdata;
  final VoidCallback clikBoton;

  const Botoncitos(
      {required this.titulo, required this.clikBoton, required this.subdata, });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 106,
      child: ListTile(
        contentPadding: EdgeInsets.only(bottom: 0, left: 10, top: 14),

        //shape: const RoundedRectangleBorder( side: BorderSide(color: Colors.black, width: 1),borderRadius: BorderRadius.zero,)
        

        title: Align(
          
          child: Row(children: [
            Column(
              children: [
                
                Container(
                  margin: const EdgeInsets.only(right: 100),
                  child:
                Text(
                  titulo,
                  style: TextStyle(fontSize: 18),
                )),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  width: 170,
                  height: 17,
                child:subdata
                ),
              ],
            ),
            Container(
                width: 104,
                height: 30,
                margin: const EdgeInsets.only(top: 0, left: 50),
                
                child: ElevatedButton(
                  
                  onPressed: clikBoton,
                  
                  child:Row(children: [
                  Icon(Icons.delete),
                  Text(
                    'Eliminar',
                    selectionColor: Colors.red,
                  ),],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 2, 199, 28),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    foregroundColor: Color.fromARGB(255, 236, 236, 236),
                  )
              
                )),
           
          ]) //Text(subdata, style: TextStyle(fontSize: 18)),

          ,
        ),
      ),
    );
  }
}

class Botoncitos2 extends StatelessWidget {
  final String titulo2;
  final VoidCallback presionar2;
  //final Container boton;
  final String subdata2;
  final VoidCallback clikBoton2;

  const Botoncitos2({
    required this.titulo2,
    required this.presionar2,
    required this.clikBoton2,
    required this.subdata2,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyPestanaConfig()));
            },
            child: Text('Cancelar'),
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 24, 23, 23),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              backgroundColor: Color.fromARGB(0, 66, 57, 57),
            ),
          ),
          new ElevatedButton(
            onPressed: presionar2,
            child: Text('Guardar'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              backgroundColor: Color.fromARGB(255, 27, 133, 1),
            ),
          ),
        ],
      ),
    );
  }
}
