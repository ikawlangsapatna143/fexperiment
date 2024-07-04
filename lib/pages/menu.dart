import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled2/services/menuCard.dart';
import 'package:untitled2/services/product.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
        Uri.parse('http://10.0.2.2:8080/products')
    );

    final data = jsonDecode(response.body);
    //print(data);
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
                color: Colors.black),
          ),
          centerTitle: true,
        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: FutureBuilder(
          future: products,
          builder: (context, snapshots){
            if(snapshots.connectionState == ConnectionState.waiting){
              return Center(
                child: SpinKitFoldingCube(
                  color: Colors.amberAccent,
                  size: 60.0,
                ),
              );
            }
            if(snapshots.hasData){
              List products = snapshots.data!;
             return Padding(
               padding: EdgeInsets.all(3.0),
               child: ListView.builder(
                 itemCount: products.length,
                 itemBuilder: (context, index){
                   return Card(
                     child: ListTile(
                       title: Column(
                         children: <Widget>[
                           Text(products[index].productName,
                             style: TextStyle(
                                  fontSize: 30,
                             ),
                           ),
                           Text(products[index].price.toString()),
                           Text(products[index].description)
                         ],
                       ),
                     ),
                   );
                 }
               ),
             );
            }
            return Center(
              child: Text('Unable to load data'),
            );
          },
        ),
      ),
    );
  }
}
// children: products.map((product)=>
//     Menucard(product: product)).toList(),