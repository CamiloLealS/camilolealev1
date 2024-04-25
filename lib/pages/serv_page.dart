import 'package:flutter/material.dart';

class Servicio extends StatelessWidget {

  final String servicio;
  final String nacionalidad;
  final String ocupacion;
  final String horario;
  final String foto;

  Servicio({required this.servicio, required this.nacionalidad, required this.ocupacion, required this.horario, required this.foto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.servicio),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.black,
                child: Image(image: AssetImage('assets/img/${this.foto}')),
              ),
              SizedBox(width: 10,),
              Text('${this.servicio}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            ],
          ),
          Divider(),
          SizedBox(height: 10,),
          Column(
            children: [
              Text('Nacionalidad: ${this.nacionalidad}', style: TextStyle(fontSize: 16),),
              SizedBox(height: 5,),
              Text('${this.ocupacion}', style: TextStyle(fontSize: 16),),
              SizedBox(height: 5,),
              Text('Horario: ${this.horario}', style: TextStyle(fontSize: 16),)
            ],
          )
        ],
      ),
    );
  }
}