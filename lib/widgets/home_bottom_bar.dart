import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Color.fromARGB(231, 41, 27, 3),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(231, 41, 27, 3),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.home,
          color: Color.fromARGB(255, 243, 221, 194),
          size: 35,
        ),
        Icon(
          Icons.favorite_outlined,
          color: Color.fromARGB(255, 243, 221, 194),
          size: 35,
        ),
        Icon(
          Icons.notifications,
          color: Color.fromARGB(255, 243, 221, 194),
          size: 35,
        ),
        Icon(
          Icons.person,
          color: Color.fromARGB(255, 243, 221, 194),
          size: 35,
        ),
      ]),
    );
  }
}
