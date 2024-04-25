import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tuple/tuple.dart';
import 'package:camilolealev1/pages/serv_page.dart';

class ServicioPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //Servicio, nacionalidad, ocupacion, horario, ubicacion
    List<Tuple5<String, String, String, String,String>> servicios = [
      Tuple5('The Sommelier', 'Brittish', 'Provee armas y munición',
          '20:00-06:00','sommelier.jpg'),
      Tuple5('The Doctor', 'American', 'Médico del mercado negro',
          '06:00-17:30','doctor.jpg'),
      Tuple5('The Tailor', 'Italian', 'Provee vestuario adecuado',
          '06:00-17:30','tailor.jpg'),
      Tuple5('The Cleaners', 'International', 'Limpian la escena del crimen',
          '20:00-06:00','cleaners.jpg')
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicios'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            for (var tuple in servicios)
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image(image: AssetImage('assets/img/${tuple.item5}'))
                      ),
                      Text('Servicio: ${tuple.item1}'),
                      Spacer(),
                      ElevatedButton(onPressed: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Servicio(servicio: tuple.item1, nacionalidad: tuple.item2, ocupacion: tuple.item3, horario: tuple.item4, foto: tuple.item5)))
                      }, child: Icon(MdiIcons.eye, color: Colors.black,))
                    ],
                  ),
                  Divider()
                ],
              )
          ],
        ),
      ),

    );
  }
}