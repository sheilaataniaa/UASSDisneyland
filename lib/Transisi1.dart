import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Transisi2.dart'; // Mengimpor file Transisi2.dart

class Transisi1 extends StatelessWidget {
  const Transisi1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: screenWidth,
                height: screenHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Background1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.038,
              top: screenHeight * 0.05,
              child: Container(
                width: screenWidth * 0.924,
                height: screenHeight * 0.53,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/transisi1.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.11,
              top: screenHeight * 0.6,
              child: SizedBox(
                width: screenWidth * 0.78,
                child: Text(
                  'Keajaiban DisneySea Menunggumu!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF1B1E28),
                    fontSize: 30,
                    fontFamily: GoogleFonts.abrilFatface().fontFamily,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.115,
              top: screenHeight * 0.7,
              child: SizedBox(
                width: screenWidth * 0.77,
                child: Text(
                  'Nikmati petualangan tak terlupakan di DisneySea! Temukan keajaiban dan kegembiraan bersama para pahlawan favoritmu.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7C838D),
                    fontSize: 16,
                    fontFamily: GoogleFonts.belleza().fontFamily,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.42,
              top: screenHeight * 0.82,
              child: Container(
                width: screenWidth * 0.16,
                height: screenHeight * 0.008,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: screenWidth * 0.089,
                        height: screenHeight * 0.008,
                        decoration: ShapeDecoration(
                          color: Color(0xFF24BAEC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: screenWidth * 0.1,
                      top: 0,
                      child: Container(
                        width: screenWidth * 0.033,
                        height: screenHeight * 0.008,
                        decoration: ShapeDecoration(
                          color: Color(0xFFCAE9FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: screenWidth * 0.142,
                      top: 0,
                      child: Container(
                        width: screenWidth * 0.016,
                        height: screenHeight * 0.008,
                        decoration: ShapeDecoration(
                          color: Color(0xFFCAE9FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.074,
              top: screenHeight * 0.88,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Transisi2()),
                  );
                },
                child: Container(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.07,
                  decoration: ShapeDecoration(
                    color: Color(0xFF24BAEC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: GoogleFonts.gabriela().fontFamily,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
