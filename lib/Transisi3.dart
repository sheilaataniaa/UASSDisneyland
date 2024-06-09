import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SignIn.dart';

class Transisi3 extends StatelessWidget {
  const Transisi3({Key? key}) : super(key: key);

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
              left: screenWidth * 0.02,
              top: screenHeight * 0.06,
              child: Container(
                width: screenWidth * 0.96,
                height: screenHeight * 0.5,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/transisi3.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.1,
              top: screenHeight * 0.62,
              child: SizedBox(
                width: screenWidth * 0.8,
                child: Text(
                  'Rasakan sensasi berlayar di DisneySea!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.abrilFatface().fontFamily,
                    color: Color(0xFF1B1E28),
                    fontSize: 24,
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
                  'Temukan keajaiban di DisneySea bersama karakter Disney favoritmu. Jadikan momen ini berharga bersama keluarga dan teman-teman!',
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
              bottom: screenHeight * 0.05,
              left: screenWidth * 0.1,
              right: screenWidth * 0.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.07,
                  decoration: ShapeDecoration(
                    color: Color(0xFF24BAEC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.gabriela().fontFamily,
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
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
