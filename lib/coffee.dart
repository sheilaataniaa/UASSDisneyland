import 'package:disneysea/americanocart.dart';
import 'package:disneysea/cappucinocart.dart';
import 'package:disneysea/caramelcart.dart';
import 'package:disneysea/cinnamoncart.dart';
import 'package:disneysea/frappucinocart.dart';
import 'package:disneysea/lattecart.dart';
import 'package:disneysea/shuhomepage.dart';
import 'package:flutter/material.dart';


class CoffeeOption extends StatelessWidget {
  const CoffeeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFCFEBFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            CoffeeGrid(),
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
            'COFFEE',
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

class CoffeeGrid extends StatelessWidget {
  const CoffeeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CoffeeCard(
                imageAsset: 'images/americano.png',
                name: "Ice Americano",
                price: "Rp.55.000",
                 onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const americanocart()),
                  );
                 },
              ),
              CoffeeCard(
                imageAsset: "images/frappucino.png",
                name: "Frappucino Blend",
                price: "Rp.65.000",
                 onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Frappucinocart()),
                  );
                 },
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CoffeeCard(
                imageAsset: "images/caramel.png",
                name: "Caramel Mocchiato",
                price: "Rp.75.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Caramelcart()),
                  );
                 },
              ),
              CoffeeCard(
                imageAsset: "images/cappucino.png",
                name: "Cappucino Coffee",
                price: "Rp.70.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cappucinocart()),
                  );
                 },
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CoffeeCard(
                imageAsset: "images/latte.png",
                name: "Coffee Latte",
                price: "Rp.65.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Lattecart()),
                  );
                },
              ),
              CoffeeCard(
                imageAsset: "images/cinnamon.png",
                name: "Cinnamon Coffee",
                price: "Rp.60.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cinnamoncart()),
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

class CoffeeCard extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String price;
  final VoidCallback? onTap;

  const CoffeeCard({super.key, required this.imageAsset, required this.name, required this.price, this.onTap});

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