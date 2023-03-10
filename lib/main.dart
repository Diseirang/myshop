import 'package:flutter/material.dart';
import 'package:myshop/views/favorite_page.dart';
import 'package:myshop/views/mycart_page.dart';
import 'package:myshop/views/search_page.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFBFBFB),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        'searchPage': (context) => const SearchPage(),
        'cartPage': (context) => const MyCartPage(),
        'favoritePage': (context) => const FavoritePage(),
      },
    );
  }
}
