import 'package:camilolealev1/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tuple/tuple.dart';

class FriendsPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    List<Tuple5<String, String, String, String, String>> lista = [
      Tuple5("The Shinobi", "Yakarta, Indonesia","45","678","shinobis.jpg"),
      Tuple5("Chidi","Villa Alemana, Chile","39","326","chidi.jpg"),
      Tuple5("Zero", "Osaka, Japan","56","989","zero.jpg"),
      Tuple5("The Adjudicator","Los Angeles, USA","31","97","adjudicator.jpg"),
      Tuple5("The Harbinger", "New York, USA","67","1010","harbinger.jpg"),
      Tuple5("Killa Harkan","Berlin, Germany","42","505","killa.jpg"),
      Tuple5("Vincent Bisset de Gramont", "Paris, France","29","200","vincent.jpg"),
      Tuple5("Caine","Hong Kong","35","275","caine.jpg"),
      Tuple5("The Elder", "Amazigh, Berber","60","2000","elder.jpg")];

    return Scaffold(
      appBar: AppBar(
        title: Text('Colegas'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            for(var tuple in lista)
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image(image: AssetImage('assets/img/${tuple.item5}')),
                      ),
                      SizedBox(width: 10),
                      Text(tuple.item1),
                      Spacer(),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage(nombre: tuple.item1, ubicacion: tuple.item2, edad: tuple.item3, kills: tuple.item4, foto: tuple.item5)));
                      }, child: Icon(MdiIcons.eye, color: Colors.black,))
                    ],
                  ),
                  Divider()
                ],
              ),
          ],
        ),
      ),
    );
  }
}