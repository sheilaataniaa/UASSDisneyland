import 'package:disneysea/diamonpass.dart';
import 'package:disneysea/pearlpass.dart';
import 'package:disneysea/shuhomepage.dart';
import 'package:disneysea/silverpass.dart';
import 'package:flutter/material.dart';
import 'package:disneysea/pearlpass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: PearlPass(),
    );
  }
}
