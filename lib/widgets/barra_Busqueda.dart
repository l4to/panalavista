import 'package:flutter/material.dart';

class MyBarraDeBusqueda extends StatefulWidget {
  final Function(String) onSearch;

  MyBarraDeBusqueda({required this.onSearch});

  @override
  _MyBarraDeBusquedaState createState() => _MyBarraDeBusquedaState();
}

class _MyBarraDeBusquedaState extends State<MyBarraDeBusqueda> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: "Buscar una panaderia",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
        onChanged: (query) {
          widget.onSearch(query);
        },
      ),
    );
  }
}
