import 'package:flutter/material.dart';
import 'package:camilolealev1/widgets/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: 600.0,
          height: 600.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/frase.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.topLeft,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(1), // Cambia 0.5 por el valor de opacidad deseado
                BlendMode.dstATop,
              ),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 80.0),
                child: Center(
                  child: Text(
                    'Bienvenido a La Mesa Alta',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
              ),
              LoginPage(),
            ],
          ),
        ),
      ],
    ));
  }
}
