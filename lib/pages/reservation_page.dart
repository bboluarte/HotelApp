import 'package:flutter/material.dart';
import 'package:reserva_hotel/pages/widgets/card_hotel.dart';

import 'hotel_info_page.dart';

class ReservationPage extends StatelessWidget {

  final hotelesSecundarios = [
    {"name": "Mariel Hotel", "image": './assets/images/image28.jpeg', "price": 370, "stars":9.7, "address": "Surco"},
    {"name": "Mercure Hotel", "image": './assets/images/image29.jpeg', "price": 380, "stars":9.8, "address": "Pueblo Libre"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text("Mis Reservas", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
            ),
          ),
          Divider(thickness: 2),
          Column(
            children: hotelesSecundarios.map((e) => Material(
              color: Colors.transparent,
              child: InkWell(
                  splashColor: Color(0xFF63A4F2),
                  highlightColor: Color(0x9963A4F2),
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => HotelInfo(hotel: e))),
                  child: CardHotel(hotel: e)),
            )).toList(),
          ),
        ],
      ),
    );
  }
}
