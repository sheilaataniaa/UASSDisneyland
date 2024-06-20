import 'package:disneysea/chocbubblecart.dart';
import 'package:disneysea/jasmincart.dart';
import 'package:disneysea/lemoncart.dart';
import 'package:disneysea/matcha.dart';
import 'package:disneysea/originalcart.dart';
import 'package:disneysea/shuhomepage.dart';
import 'package:flutter/material.dart';
import 'package:disneysea/strawberrycart.dart'; 

class TeaOption extends StatelessWidget {
  const TeaOption({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFCFEBFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            TeaGrid(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150, // Menambahkan tinggi untuk mengatasi overflow
      color: const Color(0xFF71BBE4),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 20,
            top: 55,
            child: CircleAvatar(
              backgroundColor: const Color(0xFFF6F6F8),
              radius: 22,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const shuhomepage()), // Arahkan ke ShuHomePage
                  );
                },
              ),
            ),
          ),
          const Text(
            'TEA',
            style: TextStyle(
              color: Color(0xFF060056),
              fontSize: 40,
              fontFamily: 'Charm',
              fontWeight: FontWeight.w400,
              height: 1.1,
            ),
          ),
          Positioned(
            right: 20,
            top: 55,
            child: CircleAvatar(
              backgroundColor: const Color(0xFFF6F6F8),
              radius: 22,
              child: IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.black),
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

class TeaGrid extends StatelessWidget {
  const TeaGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TeaCard(
                imageAsset: 'images/strawberry.png',
                name: "Strawberry Milk Tea",
                price: "Rp.65.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Strawberrycart()),
                  );
                },
              ),
              TeaCard(
                imageAsset: "images/original.png",
                name: "Original Milk Tea",
                price: "Rp.45.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Originalcart()),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TeaCard(
                imageAsset: "images/chocbubble.png",
                name: "Chocolate Milk Tea",
                price: "Rp.55.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Chocbubblecart()),
                  );
                },
              ),
              TeaCard(
                imageAsset: "images/matcha.png",
                name: "Matcha Milk Tea",
                price: "Rp.55.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Matchacart()),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TeaCard(
                imageAsset: "images/lemon.png", 
                name: "Ice Lemon Tea",
                price: "Rp.40.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Lemoncart()),
                  );
                },
              ),
              TeaCard(
                imageAsset: "images/jasmin.png",
                name: "Ice Jasmine Tea",
                price: "Rp.40.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Jasmincart()),
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

class TeaCard extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String price;
  final VoidCallback? onTap;

  const TeaCard({super.key, required this.imageAsset, required this.name, required this.price, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 169,
        height: 220,
        decoration: BoxDecoration(
          color: const Color(0xFF9ED6FF),
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
                return const Icon(Icons.error); // Show error icon if image fails to load
              },
            ),
            const SizedBox(height: 8),
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF001A3E),
                fontSize: 16,
                fontFamily: 'Averia Gruesa Libre',
                fontWeight: FontWeight.w400,
              ),
            ),
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
      ),
    );
  }
}
