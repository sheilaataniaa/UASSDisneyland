import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TampilanAwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF72BBE4),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 215, 0, 57),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: 279,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 210),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(206),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/pink_yellow_and_blue_cute_ice_cream_shop_logo_31.png',
                            ),
                          ),
                        ),
                        child: Container(
                          width: 279,
                          height: 297,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(53.9, 0, 0, 0),
                      child: Text(
                        'Magic',
                        style: GoogleFonts.getFont(
                          'Rosarivo',
                          fontWeight: FontWeight.w400,
                          fontSize: 52,
                          color: Color(0xFFEFE3C8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 94,
                bottom: 113,
                child: SizedBox(
                  height: 56,
                  child: Text(
                    'Shu’s',
                    style: GoogleFonts.getFont(
                      'Rosarivo',
                      fontWeight: FontWeight.w400,
                      fontSize: 40,
                      color: Color(0x80002EA3),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 256,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/hitam_dan_kuning_keranjang_ritel_logo_21.png',
                      ),
                    ),
                  ),
                  child: Container(
                    width: 300,
                    height: 248,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
