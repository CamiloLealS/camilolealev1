import 'package:flutter/widgets.dart';
import 'package:tuple/tuple.dart';
import 'package:flutter/material.dart';
import 'package:camilolealev1/widgets/hotel.dart';

class HotelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Ubicacion, foto, foto ciudad, descripcion
    List<Tuple4<String, String, String, String>> hoteles = [
      Tuple4('Osaka', 'osakaHotel.jpg',
          'The Continental ubicado en Osaka, Japón', 'osaka.jpg'),
      Tuple4('Casablanca', 'casablancaHotel.jpg',
          'The Continental ubicado en Casablanca, Marruecos', 'casablanca.jpg'),
      Tuple4('Roma', 'romaHotel.jpg', 'The Continental ubicado en Roma, Italia',
          'roma.jpg'),
      Tuple4('New York', 'newYorkHotel',
          'The Continental ubicado en New York, USA', 'newYork.jpg'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Hoteles Continental'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          for (var tuple in hoteles)
            Column(
              children: [
                Hotel(
                    ubicacion: tuple.item1,
                    foto: tuple.item2,
                    descripcion: tuple.item3,
                    fotoCiudad: tuple.item4),
                Divider()
              ],
            ),
        ],
      ),
    );
  }
}
