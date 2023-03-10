import 'package:flutter/material.dart';

import '../constants/constant_value.dart';

class ProductRowViewItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  const ProductRowViewItem(this.id, this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(right: 15),
          width: 140,
          padding: defaultPadding / 2,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xFFF3F3F9),
            ),
            color: decorationColor,
            borderRadius: defaultRaduis,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
                width: 35,
                child: Image.asset(
                  imageUrl,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
              )
            ],
          ),
        );
      },
    );
  }
}
