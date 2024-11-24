import 'package:anime_world/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

double maxWidthdp = 0;
double maxHeightdp = 0;


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    maxWidthdp = MediaQuery.of(context).size.width;
    maxHeightdp = MediaQuery.of(context).size.height;

    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}