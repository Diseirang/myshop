import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshop/constants/constant_value.dart';
import 'package:myshop/widgets/customAppBar.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: defaultPadding,
            child: Column(
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Shopping',
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Cart',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                    const Icon(
                      CupertinoIcons.delete,
                      color: Color(0xFFD48851),
                    )
                  ],
                ),
                Container(
                  width: width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBEBE),
                    borderRadius: defaultRaduis,
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.centerStart,
                    children: [
                      Stack(
                        //alignment: AlignmentDirectional.centerStart,
                        //fit: StackFit.loose,
                        children: <Widget>[
                          Container(
                            width: 70,
                            height: 70,
                            padding: defaultPadding / 2,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEBEBEB),
                              borderRadius: defaultRaduis,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.asset('asset/image/1.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
