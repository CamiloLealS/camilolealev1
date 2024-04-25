import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Contrato extends StatelessWidget {
  final String estado;
  final String precio;
  final String tipo;
  final String objetivo;
  final String foto;

  Contrato({required this.estado, required this.precio, required this.tipo, required this.objetivo, required this.foto});

  @override
  Widget build(BuildContext context) {

    return Flexible(
      child: Container(
          height: 60,
          width: double.infinity,
          child: 
          Row(
            children : [
              SizedBox(width: 5),
              if(this.estado == 'Activo')
                Icon(Icons.lock_open, color: Colors.red,)
              else
                Icon(Icons.done, color: Colors.green,),
              SizedBox(width: 5),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Tipo: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    TextSpan(
                      text: this.tipo,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ]
                )
              ),
              SizedBox(width: 5),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: this.precio,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      )
                    )
                  ]
                )
              ),
              SizedBox(width: 5),
              Container(
                height: 100,
                width: 100,
                child: Image(image: AssetImage('assets/img/${this.foto}')),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: this.objetivo,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )
                    )
                  ]
                )
              ),
            ]
            )
      ),
    );
  }
}