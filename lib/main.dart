import 'package:flutter/material.dart';
import 'package:flutter_car_rental/screens/home/car_home_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarHomeScreen(),
    );
  }
}
