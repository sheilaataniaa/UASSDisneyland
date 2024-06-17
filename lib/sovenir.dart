  import 'package:disneysea/hpdisney.dart';
import 'package:flutter/material.dart';

  class Sovenir extends StatelessWidget {
  const Sovenir({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Mengatur kotak-kotak ke atas
          crossAxisAlignment: CrossAxisAlignment.stretch, // Mengatur agar kotak-kotak menyesuaikan lebar layar
          children: [




            
            
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
                  Navigator.pop(context); // Navigate back to the previous page
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
                    MaterialPageRoute(builder: (context) => hpdisney()),
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




            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(8.0),
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: [
                  _buildItem(
                    imagePath: "images/payung.png",
                    title: "PAYUNG",
                    price: "Rp.120.000",
                  ),
                  _buildItem(
                    imagePath: "images/topi.png",
                    title: "TOPI",
                    price: "Rp.75.000",
                  ),
                  _buildItem(
                    imagePath: "images/sendal.png",
                    title: "Sandal",
                    price: "Rp.100.000",
                  ),
                  _buildItem(
                    imagePath: "images/baju.png",
                    title: "T-Shirt",
                    price: "Rp.175.000",
                  ),
                  _buildItem(
                    imagePath: "images/jaket.png",
                    title: "Jacket",
                    price: "Rp.200.000",
                  ),
                  _buildItem(
                    imagePath: "images/gantungan.png",
                    title: "Keychain",
                    price: "Rp.50.000",
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget _buildItem({required String imagePath, required String title, required String price}) {
      return Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF9ED6FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF001A3E),
                fontSize: 16,
                fontFamily: 'Averia Gruesa Libre',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              price,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF001A3E),
                fontSize: 16,
                fontFamily: 'Averia Gruesa Libre',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );
    }
  }

  void main() => runApp(const MaterialApp(home: Sovenir()));
