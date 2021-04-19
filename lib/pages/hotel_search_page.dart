import 'package:flutter/material.dart';
import 'package:reserva_hotel/pages/hotel_info_page.dart';

import 'widgets/card_hotel.dart';

class HotelSearch extends StatelessWidget {

  final hotelesSecundarios = [
    {"name": "Luxury Hotel", "image": './assets/images/image20.jpeg', "price": 320, "stars":9.1, "address": "Chorrillos"},
    {"name": "Diva Hotel", "image": './assets/images/image21.jpeg', "price": 300, "stars":8.8, "address": "Miraflores"},
    {"name": "Luxury Hotel", "image": './assets/images/image22.jpeg', "price": 350, "stars":9.4, "address": "Surco"},
    {"name": "Diva Hotel", "image": './assets/images/image23.jpeg', "price": 360, "stars":9.6, "address": "San Borja"},
    {"name": "Luxury Hotel", "image": './assets/images/image24.jpg', "price": 340, "stars":9.2, "address": "Lince"},
    {"name": "The Westin Hotel", "image": './assets/images/image25.jpeg', "price": 330, "stars":9.1, "address": "San Isidro"},
    {"name": "Luxury Hotel", "image": './assets/images/image26.jpeg', "price": 310, "stars":9.0, "address": "Miraflores"},
    {"name": "Cecil Hotel", "image": './assets/images/image27.jpeg', "price": 290, "stars":8.6, "address": "Miraflores"},
    {"name": "Mariel Hotel", "image": './assets/images/image28.jpeg', "price": 370, "stars":9.7, "address": "Surco"},
    {"name": "Diva Hotel", "image": './assets/images/image29.jpeg', "price": 380, "stars":9.8, "address": "Pueblo Libre"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: ()=>Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                              return Colors.white;
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 0.5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.search),
                            ),
                            Expanded(
                              child: TextFormField(
                                enabled: false,
                                cursorColor: Colors.black,
                                decoration: new InputDecoration(
                                    isCollapsed: true,
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                        left: 15, bottom: 11, top: 11, right: 15),
                                    hintText: "Buscar..."),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: hotelesSecundarios.map((e) => Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Color(0xFF63A4F2),
                      highlightColor: Color(0x9963A4F2),
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => HotelInfo(hotel: e))),
                      child: CardHotel(hotel: e)),
                  )).toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
