import 'package:flutter/material.dart';
import 'shuhomepage.dart'; // Import halaman ShuHomepage
import 'hpdisney.dart'; // Import halaman HpDisney

void main() {
  runApp(const ShusOceanHomepage());
}

class ShusOceanHomepage extends StatelessWidget {
  const ShusOceanHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF71BBE4),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            HomepageShusOcean(),
          ],
        ),
      ),
    );
  }
}

class HomepageShusOcean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Bagian atas dengan Shu's Magic
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('images/logo1.png', width: 121, height: 129),
                  const SizedBox(width: 16),
                  const Text(
                    "Shu's \n     Magic",
                    style: TextStyle(
                      color: Color.fromARGB(255, 2, 30, 87),
                      fontSize: 48,
                      fontFamily: 'Rosarivo',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color(0xFF9ED6FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => shuhomepage()),
                        );
                      },
                      child: Transform.scale(
                        scale: 1.7, // Sesuaikan dengan faktor skala yang diinginkan
                        child: Image.asset('images/shus.png'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'From Sea to Plate, Pure Disney Magic!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Aladin',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color(0xFF9ED6FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => hpdisney()),
                        );
                      },
                      child: Transform.scale(
                        scale: 1.8, // Sesuaikan dengan faktor skala yang diinginkan
                        child: Image.asset('images/ocean.png'),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Living Aquatic Wonders, \n Unforgettable Tales',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Adamina',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
