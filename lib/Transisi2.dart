import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Transisi3.dart';

class Transisi2 extends StatelessWidget {
  const Transisi2({Key? key}) : super(key: key);

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
                  left: screenWidth * 0.02,
                  top: screenHeight * 0.06,
                  child: Container(
                    width: screenWidth * 0.96,
                    height: screenHeight * 0.52,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/transisi2.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.09,
                  top: screenHeight * 0.6,
                  child: SizedBox(
                    width: screenWidth * 0.82,
                    child: Text(
                      'Petualangan Seru di DisneySea!',
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
                  left: screenWidth * 0.1,
                  top: screenHeight * 0.7,
                  child: SizedBox(
                    width: screenWidth * 0.8,
                    child: Text(
                      'Hadapi sensasi luar biasa di DisneySea! Jelajahi dunia ajaib dan rasakan keseruannya bersama teman dan keluargamu.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.belleza().fontFamily,
                        color: Color(0xFF7C838D),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.44,
                  top: screenHeight * 0.83,
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
                  left: screenWidth * 0.08,
                  top: screenHeight * 0.88,
                  child: Container(
                    width: screenWidth * 0.84,
                    height: screenHeight * 0.065,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF24BAEC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        // Navigasi ke halaman SignIn.dart saat tombol ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Transisi3()),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Next',
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
