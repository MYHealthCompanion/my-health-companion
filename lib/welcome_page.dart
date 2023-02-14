import 'package:flutter/material.dart';
import 'Auth-controller.dart';
import 'BMIPage.dart';
import 'charts.dart';
import 'ActivityButon.dart';
import 'VitSubPage.dart';

class WelcomePage extends StatelessWidget {

   WelcomePage({ Key? key, required String email,}) : super(key: key);

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
          GestureDetector(
            onTap: (){
              AuthController.instance.logOut();
            },
            child: Container(
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
                child: Text(
                    "Sign Out",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                ),
              ),
            ),
    ),

          SizedBox(
            height: 50,
          ),
           //Container for both BoxDecoration for the button
          SizedBox(height: w * 0.15,),
          Row(
            children: [
              ActButonSquar<LineChart>(
                w: 0.3 * 1.4,
                h: 0.15 * 1.0,
                ButtonText: "Show Chart Example",
                act: LineChart(),
              ),
              SizedBox(width: 62,),
              ActButonSquar(
                  w: 0.3 * 1.4,
                  h: 0.15 * 1.0,
                  ButtonText: "BMI Calc    ",
                  act: BMIPage()
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ActButonSquar<VitSubPage>(
                w: 0.3 * 1.4,
                h: 0.15 * 1.0,
                ButtonText: "Vitality Submission",
                act: VitSubPage(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


