import 'package:flutter/material.dart';
import 'package:camilolealev1/widgets/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/frase.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.topLeft,
              colorFilter: ColorFilter.mode(
                Colors.black, // Cambia 0.5 por el valor de opacidad deseado
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
                height: 350.0,
                padding: EdgeInsets.symmetric(vertical: 30.0),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Bienvenido a La Mesa Alta',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 218, 199, 130),
                          ),
                        ),
                      ),
                      Divider(color: Colors.white),
                      LoginPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
