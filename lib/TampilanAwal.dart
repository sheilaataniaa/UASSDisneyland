import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Transisi1.dart';

class TampilanAwal extends StatelessWidget {
  const TampilanAwal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Navigasi otomatis setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Transisi1()),
      );
    });

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFF71BBE4),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Text at the bottom
            Positioned(
              bottom: screenHeight * 0.1,
              child: Column(
                children: [
                  Text(
                    'Shu’s',
                    style: TextStyle(
                      fontFamily: GoogleFonts.rosarivo().fontFamily,
                      color: const Color(0x7F002DA2),
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Magic',
                    style: TextStyle(
                      fontFamily: GoogleFonts.rosarivo().fontFamily,
                      color: const Color(0xFFEFE3C8),
                      fontSize: 55,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            // Stack of images
            Positioned(
              top: screenHeight * 0.1,
              child: SizedBox(
                width: screenWidth * 0.9,
                height: screenHeight * 0.7,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // kelompok.png image
                    Positioned(
                      top: 80,
                      child: Container(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.35,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/kelompok.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    // Circle containing logo1.png
                    Positioned(
                      top: screenHeight * 0.18,
                      child: Container(
                        width: screenWidth * 0.6,
                        height: screenWidth * 0.6,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage('images/logo1.png'),
                            fit: BoxFit.contain,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(206),
                          ),
                        ),
                      ),
                    ),
                    // logo2.png image
                    Positioned(
                      top: screenHeight * 0.30,
                      child: Container(
                        width: screenWidth * 0.7,
                        height: screenHeight * 0.25,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/logo2.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
