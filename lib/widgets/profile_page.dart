import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String nombre;
  final String ubicacion;
  final String edad;
  final String kills;
  final String foto;

  ProfilePage({required this.nombre, required this.ubicacion, required this.edad, required this.kills, required this.foto});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil Asesino.'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Image(image: AssetImage('assets/img/${this.foto}')),
          Container(
            child: Column(
              children: <Widget>[
                Text('Nombre: ${this.nombre}'),
                Text('Ubicación: ${this.ubicacion}'),
              ],
            ),
          )
        ],
      ),
    );
  }
}