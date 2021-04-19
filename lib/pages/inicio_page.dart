import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:reserva_hotel/pages/hotel_search_page.dart';
import 'package:reserva_hotel/pages/widgets/card_hotel.dart';

import 'hotel_info_page.dart';

class InicioPage extends StatelessWidget {

  final hotelesPrincipales = [
    {"name": "Dinamo Hotel", "image": './assets/images/image1.jpeg', "price": 320, "stars":9.1},
    {"name": "Lucas Hotel", "image": './assets/images/image2.jpeg', "price": 300, "stars":8.8},
    {"name": "Zero Hotel", "image": './assets/images/image3.jpeg', "price": 350, "stars":9.4},
    {"name": "Quincy Hotel", "image": './assets/images/image4.jpeg', "price": 360, "stars":9.6},
  ];

  final hotelesSecundarios = [
    {"name": "Luxury Hotel", "image": './assets/images/image20.jpeg', "price": 320, "stars":9.1, "address": "Chorrillos"},
    {"name": "Diva Hotel", "image": './assets/images/image21.jpeg', "price": 300, "stars":8.8, "address": "Miraflores"},
    {"name": "White Hotel", "image": './assets/images/image22.jpeg', "price": 350, "stars":9.4, "address": "Surco"},
    {"name": "Jhonson Hotel", "image": './assets/images/image23.jpeg', "price": 360, "stars":9.6, "address": "San Borja"},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => HotelSearch())),
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
                              blurRadius: 3,
                              offset: Offset(0, 1), // changes position of shadow
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
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    // padding: EdgeInsets.all(20),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(999),
                        child: Image.asset(
                          "./assets/images/cloe.jpg",
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xffF35D6F),
                      ),
                      SizedBox(width: 5),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Se encuentra en",
                              style: TextStyle(color: Colors.grey)),
                          TextSpan(
                              text: " Lima",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey))
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Dónde te\ngustaría quedarte?",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width,
              height: size.height * .42,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  height: 350,
                                  padding: EdgeInsets.all(10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      hotelesPrincipales[index]['image'],
                                      fit: BoxFit.cover,
                                    )
                                  ),
                                ),
                                Positioned(
                                  top: 20,
                                  left: 0,
                                  child:  RawMaterialButton(
                                    onPressed: () {},
                                    elevation: 2.0,
                                    fillColor: Color(0x99000000),
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white
                                    ),
                                    padding: EdgeInsets.only(left: 11, right: 10, top: 10, bottom: 8),
                                    shape: CircleBorder(),
                                  )
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15,right: 15,bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${hotelesPrincipales[index]['name']}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(text:"PEN ${hotelesPrincipales[index]['price']}/", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF63A4F2))),
                                            TextSpan(text:"noche", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey))
                                          ]
                                        ),
                                      )
                                    ],
                                  )
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFFFC8026)
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(Icons.star, color: Colors.white),
                                      Text("${hotelesPrincipales[index]['stars']}", style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  );
                },
                itemCount: hotelesPrincipales.length,
                viewportFraction: 0.65,
                scale: 0.8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hoteles cercanos",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  InkWell(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => HotelSearch())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Ver más",
                          style: TextStyle(fontSize: 18, color: Color(0xFF63A4F2), fontWeight: FontWeight.bold)),
                    )
                  )
                ],
              ),
            ),
            Column(
              children: hotelesSecundarios.map((e) => Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Color(0xFF63A4F2),
                  highlightColor: Color(0x9963A4F2),
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => HotelInfo(hotel: e,))),
                  child: CardHotel(hotel: e)),
              )).toList(),
            )
          ],
        ),
      ),
    );
  }
}