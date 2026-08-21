import 'package:flutter/material.dart';
import 'package:flutter_nvg/Project1.dart';
import 'package:flutter_nvg/Project2.dart';
import 'package:flutter_nvg/Project3.dart';
import 'package:flutter_nvg/Project4.dart';
import 'package:flutter_nvg/Project5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' ',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue, 
        useMaterial3: true,           
      ), 
      //home : const Nvg1(), 
      //home : const HomePage(), 
      //home : const Nvg3(),
      //home : const Nvg4(), 
      //home : const Nvg5(), 
    );
  }
}

