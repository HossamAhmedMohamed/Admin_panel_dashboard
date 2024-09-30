// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_tharwat_samy/presentation/screens/dash_board.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       home: DashBoard()
    );
  }
}
 
   