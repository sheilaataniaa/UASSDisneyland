import 'package:disneysea/diamonpass.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const silverpass());
}

class silverpass extends StatelessWidget {
  const silverpass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // This line removes the debug banner
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          SapphireAnnualPass(),
        ]),
      ),
    );
  }
}

class SapphireAnnualPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 42,
                top: 170,
                child: Container(
                  width: 316,
                  height: 500, // Increased height to ensure the text fits
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 309,
                          height: 43.29,
                          child: Text(
                            'DIAMOND PASS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Abril Fatface',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 380, // Adjusted position to fit within the container
                        child: SizedBox(
                          width: 311,
                          height: 140, // Increased height to ensure the text fits
                          child: Text(
                            'Tingkatkan pengalaman Anda di Tokyo DisneySea dengan Sapphire Annual Pass. Manfaat termasuk akses FastPass+, diskon 15% di restoran dan toko suvenir, parkir VIP, akses ke lounge eksklusif, dan undangan meet-and-greet dengan karakter Disney.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Abhaya Libre Medium',
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 104,
                top: 707,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DiamondPass()),
                    );
                  },
                  child: Container(
                    width: 184.34,
                    height: 49,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 184.34,
                            height: 49,
                            decoration: ShapeDecoration(
                              color: Color(0xFF24BAEC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12,
                          top: 13,
                          child: SizedBox(
                            width: 160,
                            height: 22,
                            child: Text(
                              'BUY Rp. 1.500.000',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Gabriela',
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 393,
                  height: 124,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.01, 1.00),
                      end: Alignment(0.01, -1),
                      colors: [Color(0xFF92ACB4), Color(0xFF24BAEC)],
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'DisneySea',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Gabriela',
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          'Sambut Keajaiban & Raih Petualanganmu',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Gabriela',
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 39,
                top: 170,
                child: Container(
                  width: 327,
                  height: 323,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/silverpas.png"), // Ini benar
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 97,
                top: 137,
                child: Text(
                  'Sapphire Annual Pass',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Gabriela',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
