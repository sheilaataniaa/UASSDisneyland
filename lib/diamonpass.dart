


import 'package:flutter/material.dart';

void main() {
  runApp(const diamondpass());
}

class diamondpass extends StatelessWidget {
  const diamondpass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          DiamondAnnualPass(),
        ]),
      ),
    );
  }
}

class DiamondAnnualPass extends StatelessWidget {
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
                left: 50,
                top: 84,
                child: Stack(
                  children: [
                    Positioned(
                      left: 2,
                      top: 0,
                      child: SizedBox(
                        width: 309,
                        height: 43.29,
                        child: Text(
                          'DIAMOND PASS ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Abril Fatface',
                            fontWeight: FontWeight.w400,
                            height: 0.04,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 423,
                      child: SizedBox(
                        width: 311,
                        height: 104.19,
                        child: Text(
                          'Nikmati kemewahan dengan Diamond Annual Pass di Tokyo DisneySea. Fasilitas mencakup akses tanpa antri, diskon 20% di restoran dan toko suvenir, parkir VIP dengan valet, akses ke lounge mewah, paket foto gratis, undangan acara VIP, dan layanan concierge pribadi.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Abhaya Libre Medium',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 104,
                top: 708,
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
                          height: 17,
                          child: Text(
                            'BUY Rp. 2.500.000',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Gabriela',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                        ),
                      ),
                    ],
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
                ),
              ),
              Positioned(
                left: 42,
                top: 170,
                child: Container(
                  width: 327,
                  height: 323,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/327x323"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(34),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 137,
                child: Text(
                  'Diamond Annual Pass',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Gabriela',
                    fontWeight: FontWeight.w400,
                    height: 0.05,
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
