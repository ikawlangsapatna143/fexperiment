import 'package:flutter/material.dart';
import 'package:untitled2/services/product.dart';

class Selectedproduct extends StatefulWidget {
  final Product product;
  const Selectedproduct({super.key, required this.product});

  @override
  State<Selectedproduct> createState() => _SelectedproductState(product: product);
}

class _SelectedproductState extends State<Selectedproduct> {
 final Product product;
late double totalAmount;
int numberofOrders = 1;
 _SelectedproductState({required this.product});

 @override
  void initState() {
    super.initState();
    totalAmount = product.price;
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 400,
                height: 400,
             child:  Image.network(product.url)
              ),
              Text(widget.product.productName),
              Text(widget.product.description),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
    '₱ ${totalAmount.toString()}',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      setState(() {
                        if(numberofOrders > 1){
                          numberofOrders -= 1;
                          totalAmount = product.price * numberofOrders;
                        }
                      });
                    },
                    icon: Icon(Icons.remove),
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)
                    ),
                  ),
                  Text(
                    numberofOrders.toString(),
                  style: TextStyle(
                  fontSize: 20.0,
                  ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: (){
                      setState(() {
                        numberofOrders += 1;
                        totalAmount = product.price * numberofOrders;
                      });
                    },
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white)
                    ),
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
