import 'package:camilolealev1/widgets/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController userController = TextEditingController();


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


    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: userController,
              decoration: InputDecoration(
                hintText: 'Usuario',
                fillColor: Colors.white.withOpacity(0.8),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                fillColor: Colors.white.withOpacity(0.8),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String user = userController.text;

                switch(user){
                  case ("elder"):
                  Tuple5<String, String, String, String, String> tupla = lista[8];
                  String nombre = tupla.item1;
                  String ubicacion = tupla.item2;
                  String edad = tupla.item3;
                  String kills = tupla.item4;
                  String foto = tupla.item5;

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage(nombre: "${nombre}", ubicacion: "${ubicacion}", edad: "${edad}", kills: "${kills}", foto: "${foto}")),
                  );
                  break;
                  case ("shinobis"):
                  Tuple5<String, String, String, String, String> tupla = lista[0];
                  String nombre = tupla.item1;
                  String ubicacion = tupla.item2;
                  String edad = tupla.item3;
                  String kills = tupla.item4;
                  String foto = tupla.item5;

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage(nombre: "${nombre}", ubicacion: "${ubicacion}", edad: "${edad}", kills: "${kills}", foto: "${foto}")),
                  );
                  break;
                  case ("chidi"):
                  Tuple5<String, String, String, String, String> tupla = lista[1];
                  String nombre = tupla.item1;
                  String ubicacion = tupla.item2;
                  String edad = tupla.item3;
                  String kills = tupla.item4;
                  String foto = tupla.item5;

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage(nombre: "${nombre}", ubicacion: "${ubicacion}", edad: "${edad}", kills: "${kills}", foto: "${foto}")),
                  );
                  break;
                  case ("zero"):
                  Tuple5<String, String, String, String, String> tupla = lista[2];
                  String nombre = tupla.item1;
                  String ubicacion = tupla.item2;
                  String edad = tupla.item3;
                  String kills = tupla.item4;
                  String foto = tupla.item5;

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage(nombre: "${nombre}", ubicacion: "${ubicacion}", edad: "${edad}", kills: "${kills}", foto: "${foto}")),
                  );
                  break;
                  case ("adjudicator"):
                  Tuple5<String, String, String, String, String> tupla = lista[3];
                  String nombre = tupla.item1;
                  String ubicacion = tupla.item2;
                  String edad = tupla.item3;
                  String kills = tupla.item4;
                  String foto = tupla.item5;

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage(nombre: "${nombre}", ubicacion: "${ubicacion}", edad: "${edad}", kills: "${kills}", foto: "${foto}")),
                  );
                  break;
                  case ("harbinger"):
                  Tuple5<String, String, String, String, String> tupla = lista[4];
                  String nombre = tupla.item1;
                  String ubicacion = tupla.item2;
                  String edad = tupla.item3;
                  String kills = tupla.item4;
                  String foto = tupla.item5;

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage(nombre: "${nombre}", ubicacion: "${ubicacion}", edad: "${edad}", kills: "${kills}", foto: "${foto}")),
                  );
                  break;
                  case ("killa"):
                  Tuple5<String, String, String, String, String> tupla = lista[5];
                  String nombre = tupla.item1;
                  String ubicacion = tupla.item2;
                  String edad = tupla.item3;
                  String kills = tupla.item4;
                  String foto = tupla.item5;

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage(nombre: "${nombre}", ubicacion: "${ubicacion}", edad: "${edad}", kills: "${kills}", foto: "${foto}")),
                  );
                  break;
                  case ("vincent"):
                  Tuple5<String, String, String, String, String> tupla = lista[6];
                  String nombre = tupla.item1;
                  String ubicacion = tupla.item2;
                  String edad = tupla.item3;
                  String kills = tupla.item4;
                  String foto = tupla.item5;

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage(nombre: "${nombre}", ubicacion: "${ubicacion}", edad: "${edad}", kills: "${kills}", foto: "${foto}")),
                  );
                  break;
                  case ("caine"):
                  Tuple5<String, String, String, String, String> tupla = lista[7];
                  String nombre = tupla.item1;
                  String ubicacion = tupla.item2;
                  String edad = tupla.item3;
                  String kills = tupla.item4;
                  String foto = tupla.item5;

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage(nombre: "${nombre}", ubicacion: "${ubicacion}", edad: "${edad}", kills: "${kills}", foto: "${foto}")),
                  );
                  break;
                  default:
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Usuario no encontrado'),
                          content: Text('No Existe este usuario en la base de asesinos!'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cerrar'),
                            ),
                          ],
                        );
                      },
                    );
                }
              },
              child: Text(
                'Iniciar sesión',
                selectionColor: Colors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
}
