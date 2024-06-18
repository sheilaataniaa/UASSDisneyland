import 'package:disneysea/shuhomepage.dart';
import 'package:disneysea/strawberrycart.dart';
import 'package:flutter/material.dart';

class SnackOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFEBFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SnackGrid(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150, // Menambahkan tinggi untuk mengatasi overflow
      color: Color(0xFF71BBE4),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 20,
            top: 55,
            child: CircleAvatar(
              backgroundColor: Color(0xFFF6F6F8),
              radius: 22,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => shuhomepage()), 
                  );
                },
              ),
            ),
          ),
          Text(
            'SNACK',
            style: TextStyle(
              color: Color(0xFF060056),
              fontSize: 48,
              fontFamily: 'Charm',
              fontWeight: FontWeight.w400,
              height: 1.1,
            ),
          ),
          Positioned(
            right: 20,
            top: 55,
            child: CircleAvatar(
              backgroundColor: Color(0xFFF6F6F8),
              radius: 22,
              child: IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.black),
                onPressed: () {
                  // Aksi keranjang
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SnackGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SnackCard(
                imageAsset: 'images/ffremovebg.png',
                name: "French Fries",
                price: "Rp.70.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Strawberrycart()),
                  );
                },
              ),
              SnackCard(
                imageAsset: "images/hdr.png",
                name: "Hot Dog",
                price: "Rp.80.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Strawberrycart()),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SnackCard(
                imageAsset: "images/corndog.png",
                name: "Corndog",
                price: "Rp.70.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Strawberrycart()),
                  );
                },
              ),
              SnackCard(
                imageAsset: "images/beefsarbg.png",
                name: "Beef Sausage",
                price: "Rp.45.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Strawberrycart()),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SnackCard(
                imageAsset: "images/chickremovebg.png",
                name: "Chicken Strips",
                price: "Rp.65.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Strawberrycart()),
                  );
                },
              ),
              SnackCard(
                imageAsset: "images/burrger.png",
                name: "Burger",
                price: "Rp.75.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Strawberrycart()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SnackCard extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String price;
  final VoidCallback? onTap;

  SnackCard({required this.imageAsset, required this.name, required this.price, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 169,
      height: 220,
      decoration: BoxDecoration(
        color: Color(0xFF9ED6FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageAsset,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
            errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
              return Icon(Icons.error); // Show error icon if image fails to load
            },
          ),
          SizedBox(height: 8),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF001A3E),
              fontSize: 16,
              fontFamily: 'Averia Gruesa Libre',
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            price,
            textAlign: TextAlign.center,
            style: TextStyle(
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
