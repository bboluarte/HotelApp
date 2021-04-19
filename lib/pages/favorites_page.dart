import 'package:flutter/material.dart';
import 'package:reserva_hotel/pages/widgets/card_hotel.dart';

import 'hotel_info_page.dart';

class FavoritesPage extends StatelessWidget {

  final favoritas = [
    {"name": "Diva Hotel", "image": './assets/images/image23.jpeg', "price": 360, "stars":9.6, "address": "San Borja"},
    {"name": "Luxury Hotel", "image": './assets/images/image24.jpg', "price": 340, "stars":9.2, "address": "Lince"},
    {"name": "The Westin Hotel", "image": './assets/images/image25.jpeg', "price": 330, "stars":9.1, "address": "San Isidro"},
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
              child: Text("Mis Favoritos", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
            ),
          ),
          Divider(thickness: 2),
          Column(
            children: favoritas.map((e) => Material(
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
