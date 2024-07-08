import 'package:flutter/material.dart';
import 'package:untitled2/services/product.dart';

class Selectedproduct extends StatefulWidget {
  final Product product;
  const Selectedproduct({super.key, required this.product});

  @override
  State<Selectedproduct> createState() => _SelectedproductState();
}

class _SelectedproductState extends State<Selectedproduct> {
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
      body: Column(
        children: [
          Column(
            children: [
              Text(widget.product.productName),
              Text(widget.product.description),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.product.price.toString()),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: (){
                    },
                  ),
                  Text(widget.product.price.toString()),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: (){},
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
