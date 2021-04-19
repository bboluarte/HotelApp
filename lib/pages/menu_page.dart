import 'package:flutter/material.dart';
import 'package:reserva_hotel/pages/favorites_page.dart';
import 'package:reserva_hotel/pages/inicio_page.dart';
import 'package:reserva_hotel/pages/reservation_page.dart';
import 'package:reserva_hotel/pages/user_page.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  int currentIndex=0;
  PageController controller;
  final lista = [
    InicioPage(),
    ReservationPage(),
    FavoritesPage(),
    UserPage(),
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: lista,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            controller.jumpToPage(index);
          });
        },
        // backgroundColor: Colors.teal[900],
        selectedItemColor: Color(0xFF3488EF),
        unselectedItemColor: Color(0xFFA09C9C),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Column(
              children: [
                Icon(Icons.home),
                Icon(Icons.circle, size: 5)
              ],
            ),
            label: 'Inicio'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airline_seat_flat_angled_outlined),
            activeIcon: Column(
              children: [
                Icon(Icons.airline_seat_flat_angled),
                Icon(Icons.circle, size: 5)
              ],
            ),
            label: 'Reservas'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            activeIcon: Column(
              children: [
                Icon(Icons.favorite),
                Icon(Icons.circle, size: 5)
              ],
            ),
            label: 'Favoritos'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Column(
              children: [
                Icon(Icons.person),
                Icon(Icons.circle, size: 5)
              ],
            ),
            label: 'Usuario'
          )
        ],
      ),
    );

  }



}
