
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemsWidget extends StatelessWidget{
  const NewestItemsWidget({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Padding(padding: const EdgeInsets.symmetric(vertical:10, horizontal:10),
      child:Column(children: [

        //single items
        Padding(padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: 380,
          height:150,
          decoration:BoxDecoration(
            color: const Color(0xFF24BAEC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                 color: Colors.black.withOpacity(0.4),
                 spreadRadius: 3,
                 blurRadius: 10,
                 offset: const Offset(0,3),
              ),
            ],
          ),
          child: Row(children: [
            InkWell(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                child: Image.asset("images/bluberrbg.png",
                height: 120,
                width: 115,
                ),
              ),
            ),
            SizedBox(
              width: 190,
              child: Column(
                crossAxisAlignment :CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height:2),
                  const Text("Blueberry Milkshake",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const Text("Taste Our Blueberry Milkshake, We Provide Our Great Foods",
                  style: TextStyle(
                    fontSize: 14,
                  ),),
                  RatingBar.builder(
                   initialRating: 4,
                   minRating:1,
                   direction:Axis.horizontal , 
                   itemCount: 5,
                   itemSize: 18,
                   itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                   itemBuilder: (context, _) => 
                   const Icon( Icons.star,
                    color: Colors.amber,
                     ),
                   onRatingUpdate: (index){},
                   ),
                ],
              ),
            ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                             Padding(
                        padding: EdgeInsets.only(top: 10,left:30), // Adjust this value to align the icon
                        child: Icon(
                          Icons.favorite_border,
                          size: 24,
                        ),
                      ),
                        ],
                      )
                    )
          ],),
        ),
        ),

        Padding(padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: 380,
          height:150,
          decoration:BoxDecoration(
            color: const Color(0xFF24BAEC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                 color: Colors.black.withOpacity(0.4),
                 spreadRadius: 3,
                 blurRadius: 10,
                 offset: const Offset(0,3),
              ),
            ],
          ),
          child: Row(children: [
            InkWell(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                child: Image.asset("images/sosisremovebg.png",
                height: 120,
                width: 115,
                ),
              ),
            ),
            SizedBox(
              width: 190,
              child: Column(
                crossAxisAlignment :CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height:2),
                  const Text("Beef Sausage",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const Text("Taste Our Beef Sausage, We Provide Our Great Foods",
                  style: TextStyle(
                    fontSize: 14,
                  ),),
                  RatingBar.builder(
                   initialRating: 4,
                   minRating:1,
                   direction:Axis.horizontal , 
                   itemCount: 5,
                   itemSize: 18,
                   itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                   itemBuilder: (context, _) => 
                   const Icon( Icons.star,
                    color: Colors.amber,
                     ),
                   onRatingUpdate: (index){},
                   ),
                ],
              ),
            ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                             Padding(
                        padding: EdgeInsets.only(top: 10,left:30), // Adjust this value to align the icon
                        child: Icon(
                          Icons.favorite_border,
                          size: 24,
                        ),
                      ),
                        ],
                      )
                    )
          ],),
        ),
        ),
        Padding(padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: 380,
          height:150,
          decoration:BoxDecoration(
            color: const Color(0xFF24BAEC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                 color: Colors.black.withOpacity(0.4),
                 spreadRadius: 3,
                 blurRadius: 10,
                 offset: const Offset(0,3),
              ),
            ],
          ),
          child: Row(children: [
            InkWell(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                child: Image.asset("images/avocadoremovebg.png",
                height: 120,
                width: 115,
                ),
              ),
            ),
            SizedBox(
              width: 190,
              child: Column(
                crossAxisAlignment :CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height:2),
                  const Text("Avocado Juice",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const Text("Taste Our Avocado Juice, We Provide Our Great Foods",
                  style: TextStyle(
                    fontSize: 14,
                  ),),
                  RatingBar.builder(
                   initialRating: 5,
                   minRating:1,
                   direction:Axis.horizontal , 
                   itemCount: 5,
                   itemSize: 18,
                   itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                   itemBuilder: (context, _) => 
                   const Icon( Icons.star,
                    color: Colors.amber,
                     ),
                   onRatingUpdate: (index){},
                   ),
                ],
              ),
            ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                             Padding(
                        padding: EdgeInsets.only(top: 10,left:30), // Adjust this value to align the icon
                        child: Icon(
                          Icons.favorite_border,
                          size: 24,
                        ),
                      ),
                        ],
                      )
                    )
          ],),
        ),
        ),
      ],)
      ),
    );
  }
  }