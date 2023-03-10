import 'package:flutter/material.dart';

import '../constants/constant_value.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
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
          child: Icon(
            Icons.sort,
            size: 25,
            color: iconColor,
          ),
        ),
        Container(
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
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://media.tatler.com/photos/6141eb3d970aecd0f140d191/1:1/w_1920,h_1920,c_limit/gettyimages-961740582-square.jpg',
              ),
            ),
          ),
          height: 45,
          width: 45,
          // child: Badge(
          //   position: BadgePosition.topEnd(top: -15, end: -15),
          //   badgeContent: const Text(
          //     '3',
          //     style: TextStyle(
          //       color: Colors.white,
          //     ),
          //   ),
          //   badgeStyle: badgeStyle,
          //   child: const Image(
          //     fit: BoxFit.cover,
          //     image: NetworkImage(
          //       'https://media.tatler.com/photos/6141eb3d970aecd0f140d191/1:1/w_1920,h_1920,c_limit/gettyimages-961740582-square.jpg',
          //     ),
          //   ),
          // ),
        ),
      ],
    );
  }
}
