import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(
      title: Center(
        child: Text (
          'User Profile',
          style: TextStyle(
              fontSize:30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              color: Colors.white
          ),
        ),
      ),
      backgroundColor: Colors.deepPurple[600],
    ),
  body: Padding(
    padding: EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            'Name:',
           style: TextStyle(
           fontSize: 18.0,
           color: Colors.black,
    ),
        ),
        Text(
          'CHRISTOPER NEO G. BANSON',
          style: TextStyle(
              fontSize:20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              color: Colors.black
          ),
        ),
        SizedBox(height: 30.0,),
        Text(
          'Year:',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
        ),
        Text(
          '3RD YEAR COLLEGE',
          style: TextStyle(
              fontSize:20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              color: Colors.black
          ),
        ),
        SizedBox(height: 30.0,),
        Text(
          'Email:',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
        ),
        Text(
          'BANSONCHRISTOPER@GMAIL.COM',
          style: TextStyle(
              fontSize:20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              color: Colors.black
          ),
        ),
      ],
    ),

  ),
  ),
));