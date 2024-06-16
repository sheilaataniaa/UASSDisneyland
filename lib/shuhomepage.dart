import 'package:disneysea/Widgets/AppBarWidget.dart';
import 'package:disneysea/Widgets/CategoriesWidget.dart';
import 'package:disneysea/Widgets/NewestItemsWidget.dart';
import 'package:disneysea/Widgets/PopularItemsWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class shuhomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF9ED7FF),
      body: ListView(
        children: [
          AppBarWidget(),

          Padding(padding: EdgeInsets.symmetric(
            vertical:10,
            horizontal: 15,
             ),
             child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color:Colors.grey.withOpacity(1),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ]
              ),
              child: Padding(padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(children:[
                Icon(CupertinoIcons.search,color:Color(0xFF24BAEC)
                ),
                Container(
                  height:50,
                  width: 300,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "What Would You Like To Have?",
                          border: InputBorder.none,
                         ),
                        ),
                      ),
                ),
                Icon(Icons.filter_list),
               ],
                ),
              ),
             ),
            ),

            //categories
          Padding(
              padding: EdgeInsets.only(top:20,left:10),
            child: Text("Categories"
            ,style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 14,
            ),
           ),
          ),

          //categories widget
          CategoriesWidget(),

          //popular Items
          Padding(
              padding: EdgeInsets.only(top:20,left:10),
            child: Text("Popular"
            ,style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 14,
            ),
           ),
          ),

          //popular items widget
          PopularItemsWidget(),

          //newest items
          Padding(
            padding: EdgeInsets.only(top:20,left:10),
            child: Text("Newest"
            ,style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 14,
            ),
           ),
          ),

          //newest item widge
          NewestItemsWidget(),
        ],
      ),
    );
  }
}