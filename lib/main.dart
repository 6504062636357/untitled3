import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ร้านเครื่องสำอาง',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF013739)),
        useMaterial3: true,
      ),
      home: const HomePage(), // ตั้งหน้า HomePage เป็นหน้าแรก
    );
  }
}
