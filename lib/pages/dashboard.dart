import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String user = "Banson";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Center(
        child: Text(
        'Dash Board',
        style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Raleway',
        color: Colors.white),
    ),
    ),
          backgroundColor: Colors.deepPurple[600],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: 400,
            height: 1000,
            child: Card(
              color: Colors.deepPurple[300],
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello $user",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){
                          Navigator.pushNamed(context, '/menu');
                        }, child: Text("Go to Menu",
                            style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway',
                            color: Colors.deepPurple),
                        ),
                        ),
                        SizedBox (width: 10,),
                        ElevatedButton(onPressed: (){
                          Navigator.pushNamed(context, '/profile');
                        }, child: Text("Go to User",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway',
                              color: Colors.deepPurple),
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}

