import 'package:disneysea/diamonpass.dart'; // Import file containing DiamondPass widget
import 'package:disneysea/hpdisney.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SilverPass()); // Run the SilverPass widget as the main entry point
}

class SilverPass extends StatelessWidget {
  const SilverPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable debug banner
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0), // Set background color
      ),
      home: Scaffold(
        body: ListView(children: const [
          SapphireAnnualPass(), // Display SapphireAnnualPass widget inside a ListView
        ]),
      ),
    );
  }
}

class SapphireAnnualPass extends StatelessWidget {
  const SapphireAnnualPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [





        Container(
          width: 410,
          height: 850,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white), // Set container background color to white


          
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
                        left: 15,
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
                left: 110,
                top: 707,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DiamondPass()), // Navigate to DiamondPass widget on tap
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const hpdisney())
                  ); // Navigate back to the previous page
                },
                child: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
              ),
            ),
            const Positioned(
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
            const Positioned(
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
                    MaterialPageRoute(builder: (context) => const DiamondPass()),
                  ); // Navigate to the next page
                },
                child: const CircleAvatar(
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
                left: 40,
                top: 170,
                child: Container(
                  width: 327,
                  height: 340,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("images/silverpas.png"), // Set image asset
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 110,
                top: 132,
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
