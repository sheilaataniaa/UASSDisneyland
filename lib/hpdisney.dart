import 'package:disneysea/diamonpass.dart';
import 'package:disneysea/pearlpass.dart';
import 'package:disneysea/shusoceanhomepage.dart';
import 'package:disneysea/silverpass.dart';
import 'package:disneysea/sovenir.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const hpdisney());
}

class hpdisney extends StatelessWidget {
  const hpdisney({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      home: Scaffold(
        body: ListView(children: const [
          Homepage(),
        ]),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 410,
          height: 890,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
          child: Stack(
            children: [
              Positioned(
                left: 30,
                top: 680,
                child: SizedBox(
                  width: 400,
                  height: 192,
                  child: PageView(
                    children: [
                      buildPage(
                        context: context,
                        left: 110,
                        top: 155,
                        width: 136,
                        height: 12,
                        text: 'Click Here',
                        imagePath: 'images/pearlpas.png',
                        title: 'Pearl Annual Pass',
                        targetPage: PearlPass(),
                      ),
                      buildPage(
                        context: context,
                        left: 110,
                        top: 155,
                        width: 136,
                        height: 12,
                        text: 'Click Here',
                        imagePath: 'images/silverpas.png',
                        title: 'Sapphire Annual Pass',
                        targetPage: SilverPass(),
                      ),
                      buildPage(
                        context: context,
                        left: 110,
                        top: 155,
                        width: 136,
                        height: 12,
                        text: 'Click Here',
                        imagePath: 'images/diamondpas.png',
                        title: 'Diamond Annual Pass',
                        targetPage: DiamondPass(),
                      ),
                      buildPage(
                        context: context,
                        left: 110,
                        top: 155,
                        width: 136,
                        height: 12,
                        text: 'Click Here',
                        imagePath: 'images/merchandise.png',
                        title: 'Merchandise',
                        targetPage: Souvenir(),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 140,
                top: 650,
                child: SizedBox(
                  width: 126,
                  height: 23,
                  child: Text(
                    'Categories',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Abhaya Libre Medium',
                      fontWeight: FontWeight.w500,
                      height: 0.04,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 140,
                top: 410,
                child: SizedBox(
                  width: 126,
                  height: 23,
                  child: Text(
                    'Promo ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Abhaya Libre Medium',
                      fontWeight: FontWeight.w500,
                      height: 0.04,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 430,
                child: SizedBox(
                  width: 400,
                  height: 200,
                  child: PageView(
                    children: [
                      buildPromoSlide(
                        imagePath: 'images/blu.png',
                        promoText: 'BUY 1 GET 1 FREE',
                        description:
                            'Nikmati promo "Buy 1 Get 1" untuk tiket DisneySea menggunakan aplikasi blu by BCA. Dapatkan satu tiket gratis untuk setiap pembelian tiket.',
                      ),
                      buildPromoSlide(
                        imagePath: 'images/tmrw.png',
                        promoText: 'DISCOUNT 30%',
                        description:
                            'Dapatkan diskon 30% untuk tiket DisneySea dengan aplikasi TMRW by UOB. Nikmati pengalaman seru di DisneySea dengan harga lebih hemat!',
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 120,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width, // Full width of the screen
                  height: 270,
                  child: PageView(
                    children: [
                      buildImageSlide('images/hp3.png'),
                      buildImageSlide('images/hp2.png'),
                      buildImageSlide('images/hp1.png'),
                    ],
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
                        onTap: ()  {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Shusoceanhomepage()),
                          ); // Navigate to the next page
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
                            MaterialPageRoute(builder: (context) => PearlPass()),
                          ); // KE HALAMAN FERDI YANG BLOM KELARR INI PEARL HANYA UNTUK FORMALITAS
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
            ],
          ),
        ),
      ],
    );
  }

  Widget buildPage({
    required BuildContext context,
    required double left,
    required double top,
    required double width,
    required double height,
    required String text,
    required String imagePath,
    required String title,
    required Widget targetPage,
  }) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: width + 210,
            height: height + 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors:  [Color(0xFF92ACB4), Color(0xFF24BAEC)],
              ),
            ),
          ),
        ),
        Positioned(
          left: left,
          top: 180,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => targetPage),
              );
            },
            child: SizedBox(
              width: width,
              height: height,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Abhaya Libre Medium',
                  fontWeight: FontWeight.w500,
                  height: 0.24,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: left - 28,
          top: top - 120,
          child: Container(
            width: 181,
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          left: left,
          top: top - 135,
          child: SizedBox(
            width: 136,
            height: 30,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Abhaya Libre Medium',
                fontWeight: FontWeight.w500,
                height: 0.14,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPromoSlide({
    required String imagePath,
    required String promoText,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors:  [Color(0xFF92ACB4), Color(0xFF24BAEC)],
              
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 10,
                top: 55,
                child: Image.asset(
                  imagePath,
                  width: 90,
                  height: 80,
                ),
              ),
              Positioned(
                left: 120,
                top: 20,
                child: Text(
                  promoText,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontFamily: 'Abhaya Libre Medium',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 65,
                child: SizedBox(
                  width: 220,
                  child: Text(
                    description,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14,
                      fontFamily: 'Abhaya Libre Medium',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageSlide(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
