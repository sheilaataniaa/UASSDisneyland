import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Transisi1.dart';

class TampilanAwal extends StatelessWidget {
  const TampilanAwal ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Navigasi otomatis setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Transisi1()),
      );
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFF71BBE4),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.25,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo1.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(206),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1,
              child: Column(
                children: [
                  Text(
                    'Shu’s',
                    style: TextStyle(
                      fontFamily: GoogleFonts.rosarivo().fontFamily,
                      color: Color(0x7F002DA2),
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Magic',
                    style: TextStyle(
                      fontFamily: GoogleFonts.rosarivo().fontFamily,
                      color: Color(0xFFEFE3C8),
                      fontSize: 55,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo2.png'),
                    fit: BoxFit.fill,
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
