import 'package:disneysea/hpdisney.dart';
import 'package:disneysea/sovenir.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiamondPass());
}

class DiamondPass extends StatelessWidget {
  const DiamondPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // This line removes the debug banner
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      home: Scaffold(
        body: ListView(
          children: const [
            DiamondAnnualPass(),
          ],
        ),
      ),
    );
  }
}

class DiamondAnnualPass extends StatelessWidget {
  const DiamondAnnualPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 410,
          height: 850,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              const Positioned(
                left: 42,
                top: 170,
                child: SizedBox(
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
                        top: 385, // Adjusted position to fit within the container
                        child: SizedBox(
                          width: 311,
                          height: 140, // Increased height to ensure the text fits
                          child: Text(
                            'Nikmati kemewahan dengan Diamond Annual Pass di Tokyo DisneySea. Fasilitas mencakup akses tanpa antri, diskon 20% di restoran dan toko suvenir, parkir VIP dengan valet, akses ke lounge mewah, paket foto gratis, undangan acara VIP, dan layanan concierge pribadi.',
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
                left: 110,
                top: 715,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Souvenir()),
                    );
                  },
                  child: SizedBox(
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
                              color: const Color(0xFF24BAEC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 12,
                          top: 13,
                          child: SizedBox(
                            width: 160,
                            height: 22,
                            child: Text(
                              'BUY Rp. 2.500.000',
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





             
           
             Container(
        width: double.infinity,
        height: 124,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF92ACB4), Color(0xFF24BAEC)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 19,
              top: 55,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> hpdisney())
                  ); // Navigate back to the previous page
                },
                child: Icon(Icons.arrow_back, color: Colors.white, size: 28),
              ),

            ),
            Positioned(
              left: 69,
              top: 40,
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
            Positioned(
              left: 69,
              top: 84,
              child: Text(
                'Sambut Keajaiban & Raih Petualangan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Rosarivo',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              right: 16,
              top: 49,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Souvenir()),
                  ); // Navigate to the next page
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Icon(Icons.shopping_cart, color: Color(0xFF24BAEC)),
                ),
              ),
            ),
          ],
        ),
      ),









              Positioned(
                left: 39,
                top: 180,
                child: Container(
                  width: 335,
                  height: 340,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("images/diamondpas.png"), // Ini benar
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 115,
                top: 137,
                child: Text(
                  'Diamond Annual Pass',
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


