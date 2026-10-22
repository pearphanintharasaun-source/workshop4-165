import 'package:flutter/material.dart';
import 'screen/item.dart'; // ปรับ path ตามตำแหน่งจริงของไฟล์ item.dart ในโปรเจกต์ของคุณ

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const Item(),
    );
  }
}