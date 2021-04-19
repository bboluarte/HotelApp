import 'package:flutter/material.dart';


class CardHotel extends StatelessWidget {
  Map hotel;
  CardHotel({this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: Container(
        height: size.height*.15,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                    width: 150,
                    height: size.height*.12,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(hotel['image'], fit: BoxFit.cover,)
                    )
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("${hotel['name']}", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xffF35D6F),
                          ),
                          SizedBox(width: 5),
                          Text("${hotel['address']}", style: TextStyle(color: Colors.grey))
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text:"PEN ${hotel['price']}", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF63A4F2)))
                            ]
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Color(0xFFFFC600)),
                      SizedBox(width: 4),
                      Text("${hotel['stars']} (${(hotel['stars']-0.2).toStringAsFixed(1)}k review)",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
