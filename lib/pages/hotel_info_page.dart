import 'package:flutter/material.dart';

class HotelInfo extends StatelessWidget {
  Map hotel;
  HotelInfo({this.hotel});

  final comodidades = [
    "./assets/images/wifi.png",
    "./assets/images/piscina.png",
    "./assets/images/gym.png",
    "./assets/images/area_verde.png",
  ];

  final listaHabitaciones = [
    "./assets/images/hab1.jpeg",
    "./assets/images/hab2.jpeg",
    "./assets/images/hab3.jpeg",
    "./assets/images/hab4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverAppBar(
                    leading: Container(),
                    backgroundColor: Colors.white,
                    expandedHeight: size.height * .6,
                    floating: false,
                    pinned: false,
                    flexibleSpace: Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      // width: double.infinity,
                      // height: size.height * .6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(hotel['image']),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RawMaterialButton(
                            onPressed: () => Navigator.pop(context),
                            elevation: 2.0,
                            // fillColor: Color(0x99000000),
                            fillColor: Color(0xFFFFFFFF),
                            child: Icon(Icons.arrow_back_ios_outlined,
                                color: Colors.black),
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            shape: CircleBorder(),
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 2.0,
                            // fillColor: Color(0x99000000),
                            fillColor: Color(0xFFFFFFFF),
                            child: Icon(Icons.favorite_border_outlined,
                                color: Colors.black),
                            padding: EdgeInsets.only(
                                left: 11, right: 10, top: 10, bottom: 8),
                            shape: CircleBorder(),
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Container(
                          color: Colors.white54,
                          width: double.infinity,
                          margin: EdgeInsets.only(left: 15, right: 15),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 10, top: 4, bottom: 4),
                                    margin: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0,
                                              1), // changes position of shadow
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
                                        Text("${hotel['address']}",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                child: Text("${hotel['name']}",
                                    style: TextStyle(
                                        fontSize: 34,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                child: Row(
                                  children: [
                                    Icon(Icons.star, color: Color(0xFFFFC600)),
                                    SizedBox(width: 4),
                                    Text(
                                        "${hotel['stars']} (${(hotel['stars'] - 0.2).toStringAsFixed(1)}k review)",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text("Comodidades",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: comodidades
                                        .map(
                                          (e) => Container(
                                            padding: EdgeInsets.zero,
                                            width: 55,
                                            height: 55,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Image.asset(e),
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .resolveWith<Color>(
                                                  (Set<MaterialState> states) {
                                                    return Colors.white;
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  )),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text("Ver Fotos",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: listaHabitaciones.map((e) => Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      width: 150,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(
                                            image: AssetImage(e),
                                            fit: BoxFit.cover
                                          )
                                      ),
                                    )).toList(),
                                ),
                              ),
                              SizedBox(height: 20)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
