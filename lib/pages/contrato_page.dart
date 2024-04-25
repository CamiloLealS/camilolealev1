import 'package:flutter/material.dart';
import 'package:camilolealev1/widgets/contrato.dart';
import 'package:tuple/tuple.dart';

class ContratoPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // Estado, Precio, Tipo, Objetivo, foto
    List<Tuple5<String, String, String, String, String>> contratos = [
      Tuple5('Activo', '300000', 'Abierto', 'Goku', 'goku.jpg'),
      Tuple5('Completo', '230000', 'Cerrado', 'Bob Esponja', 'bob.jpg'),
      Tuple5('Activo', '1000000', 'Cerrado', 'Ronaldinho', 'ronaldinho.jpg'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Contratos de Asesino'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            for (var tuple in contratos)
              Column(
                children: [
                  Row(
                    children: [
                      Contrato(estado: tuple.item1, precio: tuple.item2, tipo: tuple.item3, objetivo: tuple.item4, foto: tuple.item5),
                    ],
                  ),
                  Divider(),
                ],
              ),
          ],
        ),
      )
    );
  }
}