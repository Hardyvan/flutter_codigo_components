import 'package:flutter/material.dart';
import 'package:flutter_codigo_components/pages/home_pages.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(

      ),
    );
  }
}
