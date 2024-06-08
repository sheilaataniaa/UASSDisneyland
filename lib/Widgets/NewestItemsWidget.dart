import 'package:flutter/material.dart';

class NewestItemsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
      child:Column(children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 10),
        ),
      ],)
      ),
    );
  }
  }