import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_health_companion/login_page.dart';
import 'package:my_health_companion/welcome_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.4)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Your email id",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.4)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Your Password",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 40,),

              ],
            ),

          ),    //Container for the text boxes
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
                  text: "Sign Up",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,


                  ),
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>WelcomePage())

              )),

            ),

          ), //Container for both BoxDecoration for the button
          SizedBox(height: 20,),
          RichText(text: TextSpan(
              text: "Already have an account?",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20,
                fontWeight: FontWeight.bold,


              ),
              recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>LoginPage())

          )),
          SizedBox(height: w*0.20,),




        ],
      ),
    );
  }
}

