import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text (
            'SARAP BIIIII',
            style: TextStyle(
                fontSize:30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway',
                color: Colors.black
            ),
          ),
          ),
            backgroundColor: Colors.red[600],
          ),
        body: Center(
          child: Image.network('https://img-9gag-fun.9cache.com/photo/azmjEpN_700bwp.webp'),
         ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {},
       backgroundColor: Colors.red[100],
        child: Icon(
         Icons.add,
          color: Colors.white,
        ),
      ),
    ),
  ));
}

