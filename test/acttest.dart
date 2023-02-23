import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_health_companion/ActivityButon.dart';

import 'clean.dart';

class acttest extends StatelessWidget {
  acttest({super.key, required this.title, this.text = ''});

  final String title;
  String text;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: test(title: title, text: text)
    );
  }
}

class test extends StatelessWidget {
  test({Key? key, required this.title, this.text = ''})
      : super(key: key);

  final String title;
  String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Test',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: Column(children: [
        Align(
          alignment: Alignment.center,
          child: ActButon<clean>(
              w: 0.5, h: 0.08, ButtonText: text, act: clean()),
        )
      ]),
    );
  }
}
