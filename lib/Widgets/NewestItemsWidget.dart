import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
      child:Column(children: [

        //single items
        Padding(padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: 380,
          height:150,
          decoration:BoxDecoration(
            color: Color(0xFF24BAEC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                 color: Colors.black.withOpacity(0.4),
                 spreadRadius: 3,
                 blurRadius: 10,
                 offset: Offset(0,3),
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
            Container(
              width: 190,
              child: Column(
                crossAxisAlignment :CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height:2),
                  Text("Blueberry Milkshake",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text("Taste Our Blueberry Milkshake, We Provide Our Great Foods",
                  style: TextStyle(
                    fontSize: 14,
                  ),),
                  RatingBar.builder(
                   initialRating: 4,
                   minRating:1,
                   direction:Axis.horizontal , 
                   itemCount: 5,
                   itemSize: 18,
                   itemPadding: EdgeInsets.symmetric(horizontal: 4),
                   itemBuilder: (context, _) => 
                   Icon( Icons.star,
                    color: Colors.amber,
                     ),
                   onRatingUpdate: (index){},
                   ),
                ],
              ),
            ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                             Padding(
                        padding: const EdgeInsets.only(top: 10,left:30), // Adjust this value to align the icon
                        child: Icon(
                          Icons.favorite_border,
                          size: 24,
                        ),
                      ),
                     Padding(
                        padding: const EdgeInsets.only(left: 30.0), // Adjust this value to align the icon
                        child: Icon(
                          CupertinoIcons.cart,
                          size: 24,
                        ),
                      ),
                        ],
                      )
                    )
          ],),
        ),
        ),

        Padding(padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: 380,
          height:150,
          decoration:BoxDecoration(
            color: Color(0xFF24BAEC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                 color: Colors.black.withOpacity(0.4),
                 spreadRadius: 3,
                 blurRadius: 10,
                 offset: Offset(0,3),
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
            Container(
              width: 190,
              child: Column(
                crossAxisAlignment :CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height:2),
                  Text("Beef Sausage",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text("Taste Our Beef Sausage, We Provide Our Great Foods",
                  style: TextStyle(
                    fontSize: 14,
                  ),),
                  RatingBar.builder(
                   initialRating: 4,
                   minRating:1,
                   direction:Axis.horizontal , 
                   itemCount: 5,
                   itemSize: 18,
                   itemPadding: EdgeInsets.symmetric(horizontal: 4),
                   itemBuilder: (context, _) => 
                   Icon( Icons.star,
                    color: Colors.amber,
                     ),
                   onRatingUpdate: (index){},
                   ),
                ],
              ),
            ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                             Padding(
                        padding: const EdgeInsets.only(top: 10,left:30), // Adjust this value to align the icon
                        child: Icon(
                          Icons.favorite_border,
                          size: 24,
                        ),
                      ),
                     Padding(
                        padding: const EdgeInsets.only(left: 30.0), // Adjust this value to align the icon
                        child: Icon(
                          CupertinoIcons.cart,
                          size: 24,
                        ),
                      ),
                        ],
                      )
                    )
          ],),
        ),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: 380,
          height:150,
          decoration:BoxDecoration(
            color: Color(0xFF24BAEC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                 color: Colors.black.withOpacity(0.4),
                 spreadRadius: 3,
                 blurRadius: 10,
                 offset: Offset(0,3),
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
            Container(
              width: 190,
              child: Column(
                crossAxisAlignment :CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height:2),
                  Text("Avocado Juice",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text("Taste Our Avocado Juice, We Provide Our Great Foods",
                  style: TextStyle(
                    fontSize: 14,
                  ),),
                  RatingBar.builder(
                   initialRating: 5,
                   minRating:1,
                   direction:Axis.horizontal , 
                   itemCount: 5,
                   itemSize: 18,
                   itemPadding: EdgeInsets.symmetric(horizontal: 4),
                   itemBuilder: (context, _) => 
                   Icon( Icons.star,
                    color: Colors.amber,
                     ),
                   onRatingUpdate: (index){},
                   ),
                ],
              ),
            ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                             Padding(
                        padding: const EdgeInsets.only(top: 10,left:30), // Adjust this value to align the icon
                        child: Icon(
                          Icons.favorite_border,
                          size: 24,
                        ),
                      ),
                     Padding(
                        padding: const EdgeInsets.only(left: 30.0), // Adjust this value to align the icon
                        child: Icon(
                          CupertinoIcons.cart,
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