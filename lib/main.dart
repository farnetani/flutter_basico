import 'package:flutter/material.dart';
import 'package:flutter_iniciante/pages/home_page.dart';

main() {
  runApp(const MyApp());
}

// Externalizar o MaterialApp para o HomePage
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
