import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/constants/constant_value.dart';

import '../widgets/customAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Our',
                      style: TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: width * .75,
                          height: 55,
                          padding: defaultPadding / 2,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F3F1),
                            borderRadius: defaultRaduis,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.search,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 200,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search Products...',
                                    hintStyle: TextStyle(
                                      color: Color(0xFFBBBBB9),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: width * .13,
                          height: 55,
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
                          child: const Icon(
                            CupertinoIcons.sort_down,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 1; i < 6; i++) productRowView(i),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CarouselSlider.builder(
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          height: 350,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 5),
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index, realIndex) {
                          return buildItem();
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItem() {
    return Container(
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
              'asset/image/1.png',
            ),
          ),
        ],
      ),
    );
  }

  Widget productRowView(int i) {
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
              'asset/image/$i.png',
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Sneakers',
          )
        ],
      ),
    );
  }
}
