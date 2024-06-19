import 'package:disneysea/CartAndPaymentMethod.dart';
import 'package:disneysea/milkshake.dart';
import 'package:disneysea/sovenir.dart';
import 'package:disneysea/strawberrycart.dart';
import 'package:disneysea/coffee.dart';
import 'package:disneysea/dessert.dart';
import 'package:disneysea/hpdisney.dart';
import 'package:disneysea/shuhomepage.dart';
import 'package:disneysea/tea.dart';

import 'TampilanAwal.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:disneysea/hpdisney.dart';
import 'package:disneysea/pearlpass.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      theme: ThemeData(
      ),
      home: Souvenir(),
    );
  }
}