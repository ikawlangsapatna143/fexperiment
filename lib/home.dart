import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 150.0,
                    child: Image.asset('assets/channels4_profile.jpeg'),
                  ),
                ),
                Divider(height:55.0),
                Row(
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
                Text(
                  'CHRISTOPER NEO G. BANSON',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                      color: Colors.black),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
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
                  '3RD YEAR COLLEGE',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                      color: Colors.black),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
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
                Text(
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
                    onPressed: (){},
                    child: Text('Add Year',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                        color: Colors.white
                    ),
                    ),
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
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
