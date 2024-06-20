import 'package:disneysea/coffee.dart';
import 'package:disneysea/dessert.dart';
import 'package:disneysea/milkshake.dart';
import 'package:disneysea/tea.dart';
import 'package:flutter/material.dart';
import 'shuhomepage.dart';

class Mochicart extends StatelessWidget {
  const Mochicart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const AddToCart3(),
      ),
    );
  }
}

class AddToCart3 extends StatefulWidget {
  const AddToCart3({Key? key}) : super(key: key);

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart3> {
  int itemCount = 1;

  void addItem() {
    setState(() {
      itemCount++;
    });
  }

  void removeItem() {
    if (itemCount > 1) {
      setState(() {
        itemCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xFFCFEBFF)),
      child: Stack(
        children: [
          Positioned(
            left: -5,
            top: -14,
            child: Container(
              width: 420,
              height: 601,
              decoration: ShapeDecoration(
                color: Color(0xFF9ED6FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 55,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Dessert()),
                );
              },
              child: CircleAvatar(
                backgroundColor: Color(0xFFF6F6F8),
                radius: 22,
                child: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
          ),
          Positioned(
            left: 98,
            top: 519,
            child: GestureDetector(
              onTap: removeItem,
              child: const SizedBox(
                width: 38,
                height: 27,
                child: Text(
                  '-',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 48,
                    fontFamily: 'Averia Gruesa Libre',
                    fontWeight: FontWeight.w400,
                    height: 0.01,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 182,
            top: 519,
            child: SizedBox(
              width: 38,
              height: 27,
              child: Text(
                itemCount.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontFamily: 'Bakbak One',
                  fontWeight: FontWeight.w400,
                  height: 0.02,
                ),
              ),
            ),
          ),
          Positioned(
            left: 270,
            top: 519,
            child: GestureDetector(
              onTap: addItem,
              child: const SizedBox(
                width: 38,
                height: 27,
                child: Text(
                  '+',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: 'Averia Gruesa Libre',
                    fontWeight: FontWeight.w400,
                    height: 0.01,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: -7,
            top: 745,
            child: GestureDetector(
              onTap: () {
                // Function to be called when "Add to Cart" is pressed.
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Mochicart()),
                );
              },
              child: SizedBox(
                width: 407,
                height: 166,
                child: Stack(
                  children: [
                    Positioned(
                      left: 70,
                      top: 5,
                      child: Container(
                        width: 286,
                        height: 66,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF71BBE4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 98,
                      top: 40,
                      child: SizedBox(
                        width: 227,
                        height: 36,
                        child: Text(
                          'ADD TO CART',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Bree Serif',
                            fontWeight: FontWeight.w400,
                            height: 0.04,
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
            left: 65,
            top: 80,
            child: Container(
              width: 300,
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/mochi.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 8,
            top: 635,
            child: SizedBox(
              width: 384,
              height: 81,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 384,
                      height: 40.50,
                      child: Text(
                        'Mochi Mix 5 pcs',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF001A3E),
                          fontSize: 24,
                          fontFamily: 'Averia Gruesa Libre',
                          fontWeight: FontWeight.w400,
                          height: 0.04,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 75,
                    top: 40.50,
                    child: SizedBox(
                      width: 231,
                      height: 40.50,
                      child: Text(
                        'Rp.85.000',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF001A3E),
                          fontSize: 24,
                          fontFamily: 'Averia Gruesa Libre',
                          fontWeight: FontWeight.w400,
                          height: 0.04,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
