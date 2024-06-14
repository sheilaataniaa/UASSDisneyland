import 'package:flutter/material.dart';

void main() {
  runApp(const Coffee());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          CoffeeOption(),
        ]),
      ),
    );
  }
}

class CoffeeOption extends StatelessWidget {
  const CoffeeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFFCFEBFF)),
          child: Stack(
            children: [
              Positioned(
                left: 19,
                top: 178,
                child: Container(
                  width: 169,
                  height: 200,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF9ED6FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 401,
                child: Container(
                  width: 169,
                  height: 200,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF9ED6FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 204,
                top: 624,
                child: Container(
                  width: 169,
                  height: 200,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF9ED6FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 172,
                top: 790,
                child: SizedBox(
                  width: 231,
                  height: 34,
                  child: Text(
                    'Rp.60.000',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF001A3E),
                      fontSize: 16,
                      fontFamily: 'Averia Gruesa Libre',
                      fontWeight: FontWeight.w400,
                      height: 0.09,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 624,
                child: Container(
                  width: 169,
                  height: 200,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF9ED6FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: -12,
                top: 790,
                child: SizedBox(
                  width: 231,
                  height: 34,
                  child: Text(
                    'Rp.65.000',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF001A3E),
                      fontSize: 16,
                      fontFamily: 'Averia Gruesa Libre',
                      fontWeight: FontWeight.w400,
                      height: 0.09,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 204,
                top: 401,
                child: Container(
                  width: 169,
                  height: 200,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF9ED6FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 172,
                top: 567,
                child: SizedBox(
                  width: 231,
                  height: 34,
                  child: Text(
                    'Rp.70.000',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF001A3E),
                      fontSize: 16,
                      fontFamily: 'Averia Gruesa Libre',
                      fontWeight: FontWeight.w400,
                      height: 0.09,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 204,
                top: 178,
                child: Container(
                  width: 169,
                  height: 200,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF9ED6FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: -12,
                top: 345,
                child: SizedBox(
                  width: 416,
                  height: 256,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 185,
                        top: 0,
                        child: SizedBox(
                          width: 231,
                          height: 34,
                          child: Text(
                            'Rp.65.000',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF001A3E),
                              fontSize: 16,
                              fontFamily: 'Averia Gruesa Libre',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 222,
                        child: SizedBox(
                          width: 231,
                          height: 34,
                          child: Text(
                            'Rp.75.000',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF001A3E),
                              fontSize: 16,
                              fontFamily: 'Averia Gruesa Libre',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: -12,
                top: 188,
                child: SizedBox(
                  width: 231,
                  height: 190,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 231,
                          height: 34,
                          child: Text(
                            'Americano',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF001A3E),
                              fontSize: 16,
                              fontFamily: 'Averia Gruesa Libre',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 156,
                        child: SizedBox(
                          width: 231,
                          height: 34,
                          child: Text(
                            'Rp.55.000',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF001A3E),
                              fontSize: 16,
                              fontFamily: 'Averia Gruesa Libre',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 20,
                top: 407,
                child: SizedBox(
                  width: 367,
                  height: 49,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 171,
                          height: 49,
                          child: Text(
                            'Caramel Mocchiato',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF001A3E),
                              fontSize: 16,
                              fontFamily: 'Averia Serif Libre',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 169,
                        top: 1,
                        child: SizedBox(
                          width: 198,
                          height: 40,
                          child: Text(
                            'Cappucino Coffee',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF001A3E),
                              fontSize: 16,
                              fontFamily: 'Averia Serif Libre',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 18,
                top: 634,
                child: SizedBox(
                  width: 369,
                  height: 49,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 171,
                          height: 49,
                          child: Text(
                            'Coffee Latte',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF001A3E),
                              fontSize: 16,
                              fontFamily: 'Averia Serif Libre',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 171,
                        top: 0,
                        child: SizedBox(
                          width: 198,
                          height: 40,
                          child: Text(
                            'Cinnamon Coffee',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF001A3E),
                              fontSize: 16,
                              fontFamily: 'Averia Serif Libre',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 172,
                top: 188,
                child: SizedBox(
                  width: 231,
                  height: 42,
                  child: Text(
                    'Frappucino Blend',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF001A3E),
                      fontSize: 16,
                      fontFamily: 'Averia Serif Libre',
                      fontWeight: FontWeight.w400,
                      height: 0.09,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -18,
                top: -86,
                child: SizedBox(
                  width: 444,
                  height: 241,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 444,
                          height: 241,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF71BBE4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 45,
                        top: 141,
                        child: SizedBox(
                          width: 44,
                          height: 44,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 44,
                                  height: 44,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFF6F6F8),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: const FlutterLogo(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 329,
                top: 55,
                child: SizedBox(
                  width: 44,
                  height: 44,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 44,
                          height: 44,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFF6F6F8),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 118,
                top: 61,
                child: SizedBox(
                  width: 157,
                  height: 56,
                  child: Text(
                    'COFFEE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF060056),
                      fontSize: 48,
                      fontFamily: 'Charm',
                      fontWeight: FontWeight.w400,
                      height: 0.01,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 266,
                top: 27,
                child: Container(
                  width: 170,
                  height: 99,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/170x99"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 66,
                top: 193,
                child: Container(
                  width: 78,
                  height: 168,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/78x168"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 189,
                top: 190,
                child: Container(
                  width: 198,
                  height: 176,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/198x176"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 426,
                child: Container(
                  width: 146,
                  height: 145,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/146x145"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 191,
                top: 410,
                child: Container(
                  width: 207,
                  height: 184,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/207x184"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 8,
                top: 646,
                child: Container(
                  width: 204,
                  height: 161,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/204x161"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 164,
                top: 590,
                child: Container(
                  width: 248,
                  height: 297,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/248x297"),
                      fit: BoxFit.fill,
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