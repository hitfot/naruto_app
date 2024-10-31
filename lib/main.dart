import 'package:flutter/material.dart';
import 'package:naruto_app/presentation/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Naruto app',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}