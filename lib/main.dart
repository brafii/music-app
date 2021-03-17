import 'package:flutter/material.dart';
import 'package:music_app/screens/sarkodie_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SarkodiePage(),
      ),
    );
  }
}

