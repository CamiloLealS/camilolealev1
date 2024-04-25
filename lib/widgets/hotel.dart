import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  final String ubicacion;
  final String foto;
  final String descripcion;
  final String fotoCiudad;

  Hotel({required this.ubicacion, required this.foto, required this.descripcion, required this.fotoCiudad});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(width: 5,),
            Text(this.ubicacion),
            Text(this.descripcion),
            Container(height: 60, width: 60, child : Image(image: AssetImage('assets/img/${this.foto}'))),
          ],
        ),
      ),
    );
  }
}