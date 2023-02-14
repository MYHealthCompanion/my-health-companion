import 'package:flutter/material.dart';


class VitSubPage extends StatefulWidget {
  const VitSubPage({Key? key}) : super(key: key);

  @override
  State<VitSubPage> createState() => _VitSubPageState();

}
TextEditingController VitaminDController = new TextEditingController();
TextEditingController BloodPressureController = new TextEditingController();

class _VitSubPageState extends State<VitSubPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("App Tool (Work in progress!)",
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
              controller: BloodPressureController,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: 'Enter As Max/Min',
                  icon: new Icon(Icons.bloodtype)
              ),
            ),
            SizedBox(height: 20,),
            new TextField(
              controller: VitaminDController,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: 'Enter Your value',
                  icon: new Icon(Icons.medication)
              ),
            ),
            SizedBox(height: 15,),
               Container(
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
                      "Submit",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )
                  ),
                ),
              ),

            SizedBox(height: 20,),
            Text("THIS PAGE IS STILL WORK IN PROGRESS")


          ],

        ),

      ),


    );
  }
}
