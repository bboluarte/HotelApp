import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery. of(context).size;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Text("Mi Perfil", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
              ),
              Divider(thickness: 2),
              Container(
                width: size.height*.3,
                height: size.height*.3,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(999),
                    child: Image.asset(
                      "./assets/images/cloe.jpg",
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text("Chloë Moretz", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                      child: Column(
                        children: [
                          Icon(Icons.airline_seat_flat_angled, size: 30),
                          Text("2", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                      child: Column(
                        children: [
                          Icon(Icons.favorite, size: 30),
                          Text("3", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  ]
                ),
              ),
             Expanded(
               child: Container(
                 margin: EdgeInsets.symmetric(horizontal: 20),
                 constraints: BoxConstraints(maxWidth: 400),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Column(
                       children: [
                         CupertinoButton(
                             color: Color(0xFF63A4F2),
                             child: Text("Metodo de pago"),
                             onPressed: (){}
                         ),
                         SizedBox(height: 20),
                         CupertinoButton(
                             color: Color(0xFF63A4F2),
                             child: Text("Modificar Datos"),
                             onPressed: (){}
                         ),
                       ],
                     ),
                     CupertinoButton(
                         color: Color(0xFF63A4F2),
                         child: Text("Cerrar Sesión"),
                         onPressed: (){}
                     ),
                   ],
                 ),
               ),
             )
            ],
          ),
        ),
      ],
    );
  }
}
