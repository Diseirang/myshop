import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:myshop/views/favorite_page.dart';
import 'package:myshop/views/home_page.dart';
import 'package:myshop/views/mycart_page.dart';
import 'package:myshop/views/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> page = [
    const HomePage(),
    const SearchPage(),
    const MyCartPage(),
    const FavoritePage(),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
      bottomNavigationBar: MoltenBottomNavigationBar(
        borderRaduis: BorderRadius.zero,
        domeHeight: 20,
        domeCircleSize: 55,
        barHeight: 60,
        domeWidth: 120,
        borderSize: 25,
        duration: const Duration(milliseconds: 250),
        domeCircleColor: Colors.deepOrangeAccent,
        tabs: [
          MoltenTab(
            icon: const Icon(Icons.home_outlined),
          ),
          MoltenTab(
            icon: const Icon(Icons.search),
          ),
          MoltenTab(
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          MoltenTab(
            icon: const Icon(Icons.favorite_border),
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
