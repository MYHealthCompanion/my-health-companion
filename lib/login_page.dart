import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_health_companion/signup_page.dart';
import 'package:my_health_companion/welcome_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;
return Scaffold(
  backgroundColor: Colors.white,
  body: SingleChildScrollView(
    child: Column(
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
              Text(
                "Hello",
                style: TextStyle(
                  color: Colors.black,
                    fontSize: 70,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "Sign into your account",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500]
                ),
              ),
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
                      prefixIcon: Icon(Icons.email, color: Colors.deepOrangeAccent,),
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
                      hintText: "Your password",
                      prefixIcon: Icon(Icons.password, color: Colors.deepOrangeAccent,),
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
              Text(
                "                          Forgot your Password",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[500]
                ),
              ),
            ],
          ),

        ),
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
                text: "Sign In",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,


                ),
                recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>WelcomePage())

            )),

          ),

        ),
        SizedBox(height: w*0.15,),
        RichText(text: TextSpan(
          text: "Don't Have an account? SIGN UP",
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 20,
            fontWeight: FontWeight.bold,


          ),
          recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())

        ))



      ],
     ),
  ),
  );
 }
}

