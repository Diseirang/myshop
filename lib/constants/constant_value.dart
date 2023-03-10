import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

int i = 0;

Color iconColor = const Color(0xFF475269);
Color shadowColor = const Color(0xFF475269);
Color decorationColor = const Color(0xFFFFFFFF);
BadgeStyle badgeStyle = const BadgeStyle(
  shape: BadgeShape.circle,
  padding: EdgeInsets.all(7),
  badgeColor: Colors.redAccent,
);
EdgeInsets defaultPadding = const EdgeInsets.all(20);
BorderRadius defaultRaduis = BorderRadius.circular(15);

List<Widget> HorizontalItem = [
  const SizedBox(
    width: 15,
  ),
  Container(
    width: 130,
    padding: defaultPadding / 2,
    decoration: BoxDecoration(
      color: decorationColor,
      borderRadius: defaultRaduis,
      boxShadow: [
        BoxShadow(
            color: shadowColor.withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 1),
      ],
    ),
    child: Row(
      children: [
        SizedBox(
            height: 30, width: 30, child: Image.asset('asset/image/$i.png')),
        const Text('Sneakers')
      ],
    ),
  )
];

List<Container> buildProduct = [
  for (int i = 1; i < 6; i++)
    Container(
      margin: const EdgeInsets.only(right: 15),
      padding: defaultPadding,
      decoration: BoxDecoration(
        color: decorationColor,
        borderRadius: defaultRaduis,
      ),
      child: Stack(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Image.asset(
              'asset/image/$i.png',
            ),
          ),
        ],
      ),
    )
];
