import 'package:flutter/material.dart';
import 'package:banner_carousel/banner_carousel.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String user = "Banson";
  List<BannerModel> listBanners = [
    BannerModel(imagePath: "assets/1.jpg", id: "1"),
    BannerModel(imagePath: "assets/2.jpg", id: "2"),
    BannerModel(imagePath: "assets/3.jpg", id: "3"),
  ];
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
                      "Welcome $user",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    BannerCarousel(
                      banners: listBanners,
                      customizedIndicators: IndicatorModel.animation(width: 25, height: 10, spaceBetween: 5, widthAnimation: 10,
                      ),
                      height: 500,
                      activeColor: Colors.deepPurple,
                      disableColor: Colors.white,
                      animation: true,
                      borderRadius: 10,
                      width: 600,
                      indicatorBottom: false,
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

