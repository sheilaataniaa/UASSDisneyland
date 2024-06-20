import 'package:disneysea/jusapel.dart';
import 'package:disneysea/jusisrsak.dart';
import 'package:disneysea/jusmangga.dart';
import 'package:disneysea/jusoren.dart';
import 'package:disneysea/jussemangka.dart';
import 'package:disneysea/justimun.dart';
import 'package:disneysea/shuhomepage.dart';
import 'package:flutter/material.dart';

class JuiceOption extends StatelessWidget {
  const JuiceOption({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFCFEBFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            JuiceGrid(),
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
            'JUICE',
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

class JuiceGrid extends StatelessWidget {
  const JuiceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              JuiceCard(
                imageAsset: 'images/juskjeruk.png',
                name: "Orange Juice",
                price: "Rp.50.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const jusorencart()),
                  );
                },
              ),
              JuiceCard(
                imageAsset: "images/jussemangka.png",
                name: "Watermelon Juice",
                price: "Rp.50.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const jussemangkacart()),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              JuiceCard(
                imageAsset: "images/jusmentimun.png",
                name: "Cucumber Juice",
                price: "Rp.40.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const justimuncart()),
                  );
                },
              ),
              JuiceCard(
                imageAsset: "images/jusapel.png",
                name: "Apple Juice",
                price: "Rp.70.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const jusapelcart()),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              JuiceCard(
                imageAsset: "images/jussirsak.png",
                name: "Soursop Juice",
                price: "Rp.80.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const jussirsakcart()),
                  );
                },
              ),
              JuiceCard(
                imageAsset: "images/jusmangga.png",
                name: "Mango Juice",
                price: "Rp.75.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const jusmanggacart()),
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

class JuiceCard extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String price;
  final VoidCallback? onTap;

  const JuiceCard({super.key, required this.imageAsset, required this.name, required this.price,this.onTap});

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
