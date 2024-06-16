<<<<<<< HEAD
import 'package:disneysea/addtocart.dart';
import 'package:disneysea/coffee.dart';
import 'package:disneysea/dessert.dart';
import 'package:disneysea/diamonpass.dart';
import 'package:disneysea/hpdisney.dart';
import 'package:disneysea/juice.dart';
import 'package:disneysea/milkshake.dart';
import 'package:disneysea/pearlpass.dart';
import 'package:disneysea/shuhomepage.dart';
import 'package:disneysea/shusoceanhomepage.dart';
import 'package:disneysea/silverpass.dart';
import 'package:disneysea/sovenir.dart';
import 'package:disneysea/tea.dart';
=======
import 'TampilanAwal.dart';
import 'package:firebase_core/firebase_core.dart';
>>>>>>> cfb25db3d3c7fb3a3e900f55955eef279b85afd9
import 'package:flutter/material.dart';


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
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home:shuhomepage(),
=======
      theme: ThemeData(
      ),
      home: const TampilanAwal(),
>>>>>>> cfb25db3d3c7fb3a3e900f55955eef279b85afd9
    );
  }
}
