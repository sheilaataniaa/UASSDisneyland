import 'package:disneysea/blueberriescart.dart';
import 'package:disneysea/cupcart.dart';
import 'package:disneysea/donatcart.dart';
import 'package:disneysea/macaroncart.dart';
import 'package:disneysea/mochicart.dart';
import 'package:disneysea/shuhomepage.dart';
import 'package:disneysea/tangyuancart.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class Dessert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFEBFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            DessertGrid(),
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
                    MaterialPageRoute(builder: (context) => shuhomepage()), // Arahkan ke ShuHomePage
                  );
                },
              ),
            ),
          ),
          Text(
            'DESSERT',
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

class DessertGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DessertCard(
                imageAsset: 'images/macaron.png',
                name: "Macaron Mix 6 pcs",
                price: "Rp.105.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Macaroncart()),
                  );
                },
              ),
              DessertCard(
                imageAsset: "images/blueberries.png",
                name: "Blueberries Cheese",
                price: "Rp.75.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Blueberriescart()),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DessertCard(
                imageAsset: "images/donut.png",
                name: "Signature Doughnut",
                price: "Rp.35.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Donatcart()),
                  );
                },
              ),
              DessertCard(
                imageAsset: "images/mochi.png",
                name: "Mochi Mix 5 pcs",
                price: "Rp.85.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mochicart()),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DessertCard(
                imageAsset: "images/tangyuan.png",
                name: "Mochi TangYuan",
                price: "Rp.45.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tangyuancart()),
                  );
                },
              ),
              DessertCard(
                imageAsset: "images/cup.png",
                name: "Strawberry Cake Cup",
                price: "Rp.45.000",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cupcart()),
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

class DessertCard extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String price;
  final VoidCallback? onTap;

  DessertCard({required this.imageAsset, required this.name, required this.price, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
    ),
    );
  }
}