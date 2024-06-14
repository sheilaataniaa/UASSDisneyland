import 'package:flutter/material.dart';

void main() {
  runApp(const hpdisney());
}

class hpdisney extends StatelessWidget {
  const hpdisney({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // This line removes the debug banner
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Homepage(),
        ]),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
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
                left: 27,
                top: 680,
                child: Container(
                  width: 1074,
                  height: 192,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 884,
                        top: 158,
                        child: SizedBox(
                          width: 136,
                          height: 12,
                          child: Text(
                            'Click Here',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Abhaya Libre Medium',
                              fontWeight: FontWeight.w500,
                              height: 0.24,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 856,
                        top: 28,
                        child: Container(
                          width: 181,
                          height: 136,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/pearlpas.png"), // Ini benar
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 884,
                        top: 8,
                        child: SizedBox(
                          width: 136,
                          height: 30,
                          child: Text(
                            'Merchandise',
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
                      Positioned(
                        left: 605,
                        top: 161,
                        child: SizedBox(
                          width: 136,
                          height: 12,
                          child: Text(
                            'Click Here',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Abhaya Libre Medium',
                              fontWeight: FontWeight.w500,
                              height: 0.24,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 565,
                        top: 35,
                        child: Container(
                          width: 216.91,
                          height: 122,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/silverpas.png"), // Ini benar
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 605,
                        top: 8,
                        child: SizedBox(
                          width: 136,
                          height: 30,
                          child: Text(
                            'Diamond Annual Pass',
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
                      Positioned(
                        left: 332,
                        top: 160,
                        child: SizedBox(
                          width: 136,
                          height: 12,
                          child: Text(
                            'Click Here',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Abhaya Libre Medium',
                              fontWeight: FontWeight.w500,
                              height: 0.24,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 289,
                        top: 35,
                        child: Container(
                          width: 217.40,
                          height: 122,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/silverpas.png"), // Ini benar
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 331,
                        top: 8,
                        child: SizedBox(
                          width: 121,
                          height: 30,
                          child: Text(
                            'Sapphire Annual Pass',
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
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 255,
                          height: 192,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD7E1E8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 68,
                        top: 15,
                        child: SizedBox(
                          width: 119,
                          height: 15,
                          child: Text(
                            'Pearl Annual Pass',
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
                      Positioned(
                        left: 15,
                        top: 35,
                        child: Container(
                          width: 225,
                          height: 122,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/pearlpas.png"), // Ini benar
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 59,
                        top: 160,
                        child: SizedBox(
                          width: 136,
                          height: 12,
                          child: Text(
                            'Click Here',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Abhaya Libre Medium',
                              fontWeight: FontWeight.w500,
                              height: 0.24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 17,
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


              


























              
          Positioned(
        left: 13,
        top: 385,
        child: Container(
          width: 400,
          height: 200,
          child: PageView(
            children: [

              // Slide 1
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFBBBDCC),
                          Color(0xFFB4BAC9),
                          Color(0xFF45889D),
                        ],
                      ),
                      boxShadow: [
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
                          top: 10,
                          child: Image.asset(
                            'images/blu.png',
                            width: 80,
                            height: 40,
                          ),
                        ),
                        Positioned(
                          left: 100,
                          top: 10,
                          child: Text(
                            'BUY 1 GET 1 FREE',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Abhaya Libre Medium',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 100,
                          top: 40,
                          child: Container(
                            width: 190,
                            child: Text(
                              'Nikmati promo "Buy 1 Get 1" untuk tiket DisneySea menggunakan aplikasi blu by BCA. Dapatkan satu tiket gratis untuk setiap pembelian tiket.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Abhaya Libre Medium',
                                fontWeight: FontWeight.w500,
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

              // Slide 2
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFBF6D32),
                          Color(0xFFD5C366),
                          Color(0xFF6E457C),
                        ],
                      ),
                      boxShadow: [
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
                          top: 10,
                          child: Image.asset(
                            'images/tmrw.png',
                            width: 100,
                            height: 25,
                          ),
                        ),
                        Positioned(
                          left: 120,
                          top: 10,
                          child: Text(
                            'DISCOUNT 30%',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Abhaya Libre Medium',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 120,
                          top: 40,
                          child: Container(
                            width: 170,
                            child: Text(
                              'Dapatkan diskon 30% untuk tiket DisneySea dengan aplikasi TMRW by UOB. Nikmati pengalaman seru di DisneySea dengan harga lebih hemat!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Abhaya Libre Medium',
                                fontWeight: FontWeight.w500,
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

            ],
          ),
        ),

      ),




              
            Positioned(
        left: 0,
        top: 102,
        child: Container(
          width: MediaQuery.of(context).size.width, // Full width of the screen
          height: 229,
          child: PageView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adjust horizontal padding
                child: Container(
                  width: MediaQuery.of(context).size.width - 40, // Full width minus padding
                  height: 229,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/hp3.png"), // Ini benar
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adjust horizontal padding
                child: Container(
                  width: MediaQuery.of(context).size.width - 40, // Full width minus padding
                  height: 229,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/hp2.png"), // Ini benar
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adjust horizontal padding
                child: Container(
                  width: MediaQuery.of(context).size.width - 40, // Full width minus padding
                  height: 229,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/hp1.png"), // Ini benar
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),












































              Container(
              width: double.infinity,
              height: 124,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF92ACB4), Color(0xFF24BAEC)],
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 44,
                    child: Icon(Icons.arrow_back, color: Colors.white, size: 28),
                  ),
                  Positioned(
                    left: 83,
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
                    top: 44,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(Icons.shopping_cart, color: Color(0xFF24BAEC)),
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
}