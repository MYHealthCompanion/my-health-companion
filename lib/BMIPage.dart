import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'bmi.dart';
class BMIPage extends StatefulWidget {
  const BMIPage({Key? key}) : super(key: key);

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  var bmi;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("BMI Calculator",
          style: TextStyle(
            color: Colors.white
          ),
        )
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 30,),
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
              controller: weightController,
              decoration: InputDecoration(
                  hintText: "Your Weight In Kg",
                  prefixIcon: Icon(Icons.line_weight, color: Colors.deepOrangeAccent,),
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
          SizedBox(height: 30,),
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
              controller: heightController,

              decoration: InputDecoration(
                  hintText: "Your Height In Meters",
                  prefixIcon: Icon(Icons.height, color: Colors.deepOrangeAccent,),
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
          GestureDetector(
            onTap: (){
              String weight = weightController.value.text;
              String height = heightController.value.text;
               BMIdata bmi = BMIHTTP(weight, height) as BMIdata;

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
                    "Calculate",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white


                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 40,),
          Text("Your BMI is: "+ bmi.getbmi(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )
            ,),
          SizedBox(height: 20,),





        ],
    )

    ),

    );

}


}