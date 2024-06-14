import 'package:flutter/material.dart';

void main() {
  runApp(const Shusoceanhomepage());
}

class Shusoceanhomepage extends StatelessWidget {
  const Shusoceanhomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(
          children: const [
            HomepageShusOcean(),
          ],
        ),
      ),
    );
  }
}

class HomepageShusOcean extends StatelessWidget {
  const HomepageShusOcean({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman shuhomepage
        Navigator.pushNamed(context, '/shuhomepage');
      },
      child: Column(
        children: [
          Container(
            width: 393,
            height: 852,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: Color(0xFF71BBE4)),
            child: Stack(
              children: [
                Positioned(
                  left: 14,
                  top: 141,
                  child: Container(
                    width: 366,
                    height: 334,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF9ED6FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -61,
                  top: 112,
                  child: Container(
                    width: 411,
                    height: 391,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/411x391"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 153,
                  top: 242,
                  child: SizedBox(
                    width: 287,
                    height: 117,
                    child: Text(
                      'From Sea\n to Plate, \nPure \nDisney Magic!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Aladin',
                        fontWeight: FontWeight.w400,
                        height: 0.04,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 14,
                  top: 492,
                  child: Container(
                    width: 366,
                    height: 334,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF9ED6FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 435,
                  child: Container(
                    width: 399,
                    height: 448,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/399x448"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 18,
                  top: 554,
                  child: Text(
                    '\nLiving \nAquatic \nWonders, \nUnforgettable \nTales',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Adamina',
                      fontWeight: FontWeight.w400,
                      height: 0.04,
                    ),
                  ),
                ),
                const Positioned(
                  left: 135,
                  top: 18,
                  child: SizedBox(
                    width: 236,
                    height: 116,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 63,
                          top: 40,
                          child: SizedBox(
                            width: 173,
                            height: 76,
                            child: Text(
                              'Magic',
                              style: TextStyle(
                                color: Color(0xFFEFE3C8),
                                fontSize: 56,
                                fontFamily: 'Rosarivo',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: SizedBox(
                            width: 125,
                            height: 67,
                            child: Text(
                              'Shu’s',
                              style: TextStyle(
                                color: Color(0x7F002DA2),
                                fontSize: 48,
                                fontFamily: 'Rosarivo',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 5,
                  child: Container(
                    width: 121,
                    height: 129,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage('images/logo1.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(206),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
