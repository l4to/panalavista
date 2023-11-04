import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:practica_3/pages/crear_panaderia/select_image.dart';

class CrearPanaderia extends StatefulWidget {
  const CrearPanaderia({super.key});

  @override
  _CrearPanaderiaState createState() => _CrearPanaderiaState();
}

class _CrearPanaderiaState extends State<CrearPanaderia> {
  File? imagen_tu_upload;

  String nombrePanaderia = "";
  String correo = "";
  String telefono = "";
  String ubicacion = "";
  String descripcion = "";
  String horarioAtencion = "";
  List<String> productosOfrecidos = [];
  TextEditingController productoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Da inicio a tu gran negocio Creemos juntos"),
        backgroundColor: Color.fromARGB(150, 21, 216, 118),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              imagen_tu_upload != null
                  ? Image.file(imagen_tu_upload!)
                  : ElevatedButton(
                      onPressed: () async {
                        // ignore: unused_local_variable
                        final XFile? imagen = await getImage();
                        setState(() {
                          imagen_tu_upload = File(imagen!.path);
                        });
                      },
                      child: const Text("Seleccionar imagen")),
              // Portada
              // Aquí puedes agregar un widget para cargar o elegir una imagen de portada

              SizedBox(height: 20),

              _buildTextField("Nombre de la panadería", nombrePanaderia,
                  (value) => nombrePanaderia = value),
              _buildTextField("Correo", correo, (value) => correo = value),
              _buildTextField(
                  "Teléfono", telefono, (value) => telefono = value),
              _buildTextField("Ubicación de la panadería", ubicacion,
                  (value) => ubicacion = value),

              SizedBox(height: 20),

              // Productos ofrecidos
              Text("Productos que ofrece:"),
              Column(
                children: productosOfrecidos.map((producto) {
                  return Text(producto);
                }).toList(),
              ),
              TextFormField(
                controller: productoController,
                decoration: InputDecoration(
                  labelText: 'Agregar producto',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        String producto = productoController.text;
                        if (producto.isNotEmpty) {
                          productosOfrecidos.add(producto);
                          productoController.clear();
                        }
                      });
                    },
                  ),
                ),
              ),

              SizedBox(height: 20),

              _buildTextField("Horario de atención", horarioAtencion,
                  (value) => horarioAtencion = value),

              SizedBox(height: 20),

              _buildTextField("Descripción breve", descripcion,
                  (value) => descripcion = value),

              SizedBox(height: 20),

              // Botón para guardar los datos
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes guardar los datos ingresados
                },
                child: Text("Guardar"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      String label, String value, Function(String) onChanged) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: InputDecoration(labelText: label),
        onChanged: onChanged,
      ),
    );
  }
}
