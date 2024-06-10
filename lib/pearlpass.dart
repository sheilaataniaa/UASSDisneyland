import 'package:flutter/material.dart';

void main() {
  runApp(const pearlpass());
}

class pearlpass extends StatelessWidget {
  const pearlpass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          PearlAnnualPass(),
        ]),
      ),
    );
  }
}

class PearlAnnualPass extends StatelessWidget {
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
                left: 77,
                top: 79,
                child: SizedBox(
                  width: 255,
                  height: 28,
                  child: Text(
                    'Sambut Keajaiban & Raih Petualangan ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Rosarivo',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 91,
                top: 35,
                child: SizedBox(
                  width: 250,
                  height: 43,
                  child: Text(
                    'DISNEYSEA',
                    style: TextStyle(
                      color: Color(0x7F002DA2),
                      fontSize: 38,
                      fontFamily: 'Rosarivo',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 39,
                child: Container(
                  width: 39,
                  height: 37,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 39,
                          height: 37,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF6F6F8),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8.86,
                        top: 8.41,
                        child: Container(
                          width: 21.27,
                          height: 20.18,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: FlutterLogo(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 294,
                top: 17,
                child: Container(
                  width: 131.78,
                  height: 80.18,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 46.51,
                        top: 20.25,
                        child: Container(
                          width: 39.53,
                          height: 38.88,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 131.78,
                          height: 80.18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/pearlpas.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 31,
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
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 107,
                top: 137,
                child: Text(
                  'Pearl Annual Pass',
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
              Positioned(
                left: 39,
                top: 510,
                child: Container(
                  height: 200,
                  width: 316,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 20,
                        child: SizedBox(
                          width: 311,
                          height: 104.19,
                          child: Text(
                            'Nikmati akses setahun penuh ke Tokyo DisneySea dengan Pearl Annual Pass. Dapatkan akses tak terbatas ke semua wahana dan atraksi, diskon 10% di restoran dan toko suvenir, parkir reguler gratis, dan prioritas akses ke acara khusus.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Abhaya Libre Medium',
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 0,
                        child: SizedBox(
                          width: 309,
                          height: 43.29,
                          child: Text(
                            'Pearl Annual Pass',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Abril Fatface',
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
              Positioned(
                left: 102,
                top: 702,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BuyPage()),
                    );
                  },
                  child: Container(
                    width: 184.34,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: Color(0xFF24BAEC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'BUY Rp. 1.000.000',
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BuyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Page'),
      ),
      body: Center(
        child: Text('Welcome to the Buy Page!'),
      ),
    );
  }
}
