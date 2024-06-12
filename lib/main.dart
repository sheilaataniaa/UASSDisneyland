import 'package:disneysea/addtocart.dart';
import 'package:disneysea/coffee.dart';
import 'package:disneysea/dessert.dart';
import 'package:disneysea/diamonpass.dart';
import 'package:disneysea/pearlpass.dart';
import 'package:disneysea/shuhomepage.dart';
import 'package:disneysea/shusoceanhomepage.dart';
import 'package:disneysea/silverpass.dart';
import 'package:disneysea/sovenir.dart';
import 'package:disneysea/tea.dart';
import 'package:flutter/material.dart';
import 'package:disneysea/sovenir.dart';

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
