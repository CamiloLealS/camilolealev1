import 'package:camilolealev1/pages/friends_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:camilolealev1/pages/contrato_page.dart';
import 'package:camilolealev1/pages/hotel_page.dart';
import 'package:camilolealev1/pages/servicio_page.dart';

class ProfilePage extends StatelessWidget {
  final String nombre;
  final String ubicacion;
  final String edad;
  final String kills;
  final String foto;

  ProfilePage(
      {required this.nombre,
      required this.ubicacion,
      required this.edad,
      required this.kills,
      required this.foto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil Asesino.'),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 241, 239, 239),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            height: 150,
            width: double.infinity,
            child: Image(image: AssetImage('assets/img/frase.jpg')),
          ),
          Divider(),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 211, 210, 210)
                                  .withOpacity(0.8))
                        ]),
                    child: Image(
                      image: AssetImage('assets/img/${this.foto}'),
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(width: 20),
                  Flexible(
                    child: Text(
                      this.nombre,
                      style: TextStyle(
                        fontSize: 24.0,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(MdiIcons.information, size: 15),
                      SizedBox(width: 5),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Edad: ',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: this.edad,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 202, 200, 97)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.public, size: 15),
                      SizedBox(width: 5),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Ubicación: ',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: this.ubicacion,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 202, 200, 97)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(MdiIcons.knife, size: 15),
                      SizedBox(width: 5),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Cantidad de Asesinatos: ',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: this.kills,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 202, 200, 97)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContratoPage()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          MdiIcons.cash,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Mostrar Contratos',
                          style: TextStyle(color: Colors.black),
                          selectionColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ServicioPage()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          MdiIcons.roomService,
                          color: Colors.orange[300],
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Servicios Disponibles',
                          style: TextStyle(color: Colors.black),
                          selectionColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HotelPage()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          MdiIcons.bed,
                          color: Colors.red[200],
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Hoteles Continental',
                          style: TextStyle(color: Colors.black),
                          selectionColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FriendsPage()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.people_outline,
                          color: Colors.blue[300],
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Colegas',
                          style: TextStyle(color: Colors.black),
                          selectionColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
