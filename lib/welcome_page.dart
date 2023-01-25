import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
            height: h*0.29,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "img/loginimg.png"
                    ),
                    fit: BoxFit.cover
                )
            ),

          ),    //Container for the cover image

          SizedBox(height: 20,),
          Container(
            width: w*0.5,
            height: h*0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                        "img/loginbtn.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Center(
              child: RichText(text: TextSpan(
                  text: "Sign Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,


                  ),
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>LoginPage())

              )),
            ),

          ),
          SizedBox(height: 50,),
          Text("WORK IN PROGRESS",),//Container for both BoxDecoration for the button
          SizedBox(height: w*0.20,),




        ],
      ),
    );


  }
}
