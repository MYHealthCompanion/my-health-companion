import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_page.dart';
import 'charts.dart';
import 'ActivityButon.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.29,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/loginimg.png"), fit: BoxFit.cover)),
          ), //Container for the cover image

          SizedBox(
            height: 20,
          ),
          ActButon<LoginPage>(
            w: 0.5,
            h: 0.08,
            ButtonText: "Sign Out",
            act: LoginPage(),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "WORK IN PROGRESS",
          ), //Container for both BoxDecoration for the button
          SizedBox(
            height: w * 0.20,
          ),
          ActButon<LineChart>(
            w: 0.6,
            h: 0.08,
            ButtonText: "Show Example Chart",
            act: LineChart(),
          ),
        ],
      ),
    );
  }
}


