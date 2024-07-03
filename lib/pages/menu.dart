import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled2/services/menuCard.dart';
import 'package:untitled2/services/product.dart';
import 'package:http/http.dart'as http;
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  // List products =  <Product>[
  //   Product(productName: "trust", price: 69.69),
  //   Product(productName: "drivemax", price: 69.69),
  //   Product(productName: "lubricant", price: 69.69),
  // ];
late Future <List<dynamic>> products;
Future<List<dynamic>> fetchData() async {
  final response = await http.get(
      Uri.parse('10.0.2.2:8080/products')
  );

  final data = jsonDecode(response.body);
  List products = <Product>[];
  for (var product in data) {
    products.add(Product.fromJson(product));
  }
  return products;
}

//  for(var product in products){
//    print(product.productName);
//  }
//   print(response.body);
// }
@override
  void initState() {
    super.initState();
   products = fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[600],
      appBar: AppBar(
        title: Text(
            'Menu',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway',
                color: Colors.deepPurple),
          ),
        centerTitle: true,
        ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          // children: products.map((product)=>
          //     Menucard(product: product)).toList(),
        ),
      ),
    );
  }
}
