import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Transisi2.dart'; // Mengimpor file Transisi2.dart

class Transisi1 extends StatelessWidget {
  const Transisi1({Key? key}) : super(key: key); // Perbaikan key

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Positioned(
                  left: screenWidth * 0.04,
                  top: screenHeight * 0.05,
                  child: Container(
                    width: screenWidth * 0.92,
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
                        fontFamily: GoogleFonts.abrilFatface().fontFamily,
                        color: Color(0xFF1B1E28),
                        fontSize: 30,
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
                        fontFamily: GoogleFonts.belleza().fontFamily,
                        color: Color(0xFF7C838D),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.42,
                  top: screenHeight * 0.85,
                  child: Container(
                    width: screenWidth * 0.16,
                    height: screenHeight * 0.01,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenWidth * 0.09,
                          height: screenHeight * 0.01,
                          decoration: ShapeDecoration(
                            color: Color(0xFF24BAEC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.03,
                          height: screenHeight * 0.01,
                          decoration: ShapeDecoration(
                            color: Color(0xFFCAE9FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.015,
                          height: screenHeight * 0.01,
                          decoration: ShapeDecoration(
                            color: Color(0xFFCAE9FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.07,
                  top: screenHeight * 0.88,
                  child: Container(
                    width: screenWidth * 0.86,
                    height: screenHeight * 0.065,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF24BAEC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        // Navigasi ke halaman Transisi2.dart saat tombol ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Transisi2()),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontFamily: GoogleFonts.gabriela().fontFamily,
                            color: Colors.white,
                            fontSize: 16,
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
        ],
      ),
    );
  }
}
