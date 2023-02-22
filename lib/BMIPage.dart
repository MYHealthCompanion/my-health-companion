import 'package:flutter/material.dart';

class BMIPage extends StatefulWidget {
  const BMIPage({Key? key}) : super(key: key);

  @override
  State<BMIPage> createState() => _BMIPageState();
}

class _BMIPageState extends State<BMIPage> {
  TextEditingController weightController = new TextEditingController();
  TextEditingController heightController = new TextEditingController();

   double _result = 0;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("BMI Calculator",
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            new TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: 'Height in cm',
                  icon: new Icon(Icons.height)
              ),
            ),
            SizedBox(height: 20,),
            new TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: 'Weight in kg',
                  icon: new Icon(Icons.line_weight)
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                CalcBMI();
              },
              child: Container(
                width: w * 0.5,
                height: h * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(
                          "img/loginbtn.png"
                      ),
                      fit: BoxFit.cover
                  ),
                ),
                child: Center(
                  child: Text(
                      "Calculate",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              _result == null ? "Enter Value" : "${_result.toStringAsFixed(2)}",
              style: TextStyle(
                  color: Colors.black
              ),
            ),


          ],

        ),

      ),

    );
  }
  void CalcBMI(){
    double height = double.parse(heightController.text)/100;
    double weight = double.parse(weightController.text);

    double result = weight / (height * height);
    _result = result;
    setState(() {});


  }

}
