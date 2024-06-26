import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int year = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'User Profile',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 65.0,
                    backgroundImage: const AssetImage('assets/channels4_profile.jpeg'),
                    backgroundColor: Colors.deepPurple[400],
                  ),
                ),
                const Divider(height:55.0),
                const Row(
                  children: [
                    Icon(Icons.person_2,
                    color: Colors.deepPurpleAccent,
                    size: 25.0,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'Name:',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'CHRISTOPER NEO G. BANSON',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Row(
                  children: [
                    Icon(Icons.date_range,
                      color: Colors.deepPurpleAccent,
                      size: 25.0,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'Year:',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Text(
                  '$year Year',
                  style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Row(
                  children: [
                    Icon(Icons.account_circle_outlined,
                      color: Colors.deepPurpleAccent,
                      size: 25.0,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'Email:',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'BANSONCHRISTOPER@GMAIL.COM',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                      color: Colors.black),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        year += 1;
                      });
                    },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
                  ),
                    child: const Text('Add Year',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                        color: Colors.white
                    ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
