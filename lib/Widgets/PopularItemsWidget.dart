import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget{
  const PopularItemsWidget({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, 
        horizontal: 5),
        child: Row(
          children: [

            //Single Item
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 170,
            height: 225,
            decoration: BoxDecoration(
            color:const Color(0xFF24BAEC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0,3)
              ),
            ]
            ),

            child:Padding(
              padding:const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset("images/ffremovebg.png",
                    height: 130,
                    ),
                  ),
                  const Text("French Fries", style: TextStyle(fontSize:16,
                  fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height:4),
                  const Text("Taste Our French Fries", style: TextStyle(fontSize:9,
                  //fontWeight: FontWeight.bold 
                  ),
                  ),
                  const SizedBox(height:8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rp 35.000",style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Icon(Icons.favorite_border,
                      size:21,)
                    ],
                  ),
                ],
              ),
              ),
          ),
          ),
              Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 170,
            height: 225,
            decoration: BoxDecoration(
            color:const Color(0xFF24BAEC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0,3)
              ),
            ]
            ),

            child:Padding(
              padding:const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset("images/oremkremovebg.png",
                    height: 130,
                    ),
                  ),
                  const Text("Oreo Milkshake", style: TextStyle(fontSize:16,
                  fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height:4),
                  const Text("Taste Our Oreo Milkshske", style: TextStyle(fontSize:9,
                  //fontWeight: FontWeight.bold 
                  ),
                  ),
                  const SizedBox(height:8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rp 75.000",style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Icon(Icons.favorite_border,
                      size:21,)
                    ],
                  ),
                ],
              ),
              ),
          ),
          ),
              Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 170,
            height: 225,
            decoration: BoxDecoration(
            color:const Color(0xFF24BAEC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0,3)
              ),
            ]
            ),

            child:Padding(
              padding:const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset("images/chickremovebg.png",
                    height: 130,
                    ),
                  ),
                  const Text("Chicken Strips", style: TextStyle(fontSize:16,
                  fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height:4),
                  const Text("Taste Our Chicken Strips", style: TextStyle(fontSize:9,
                  //fontWeight: FontWeight.bold 
                  ),
                  ),
                  const SizedBox(height:8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rp 70.000",style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Icon(Icons.favorite_border,
                      size:21,)
                    ],
                  ),
                ],
              ),
              ),
          ),
          ),
        ],
      ),
    ),
    );
  }
}