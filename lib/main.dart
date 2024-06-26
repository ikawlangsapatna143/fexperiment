import 'package:flutter/material.dart';
import 'package:untitled2/home.dart';
import 'package:untitled2/pages/dashboard.dart';
import 'package:untitled2/pages/menu.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    '/' : (context) => Dashboard(),
    '/menu' : (context) => Menu(),
    '/profile' : (context) => Home(),
  },
));