import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ActButon<type> extends StatelessWidget {
  ActButon(
      {Key? key,
      required this.w,
      required this.h,
      required this.ButtonText,
      required this.act,
      this.coloring = Colors.white})
      : super(key: key);

  final double w;
  final double h;
  final String ButtonText;
  final type act;
  Color coloring;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * w,
      height: MediaQuery.of(context).size.height * h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
            image: AssetImage("img/loginbtn.png"), fit: BoxFit.cover),
      ),
      child: Center(
        child: RichText(
            text: TextSpan(
                text: ButtonText,
                style: TextStyle(
                  color: coloring,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Get.to(() => act))),
      ),
    );
  }
}

class ActButonSquar<type> extends StatelessWidget {
  ActButonSquar({
    Key? key,
    required this.w,
    required this.h,
    required this.ButtonText,
    required this.act,
    this.coloring = Colors.white,
  }) : super(key: key);

  final double w;
  final double h;
  final String ButtonText;
  final type act;
  Color coloring;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * w,
      height: MediaQuery.of(context).size.height * h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
            image: AssetImage("img/loginbtn.png"), fit: BoxFit.cover),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: RichText(
              text: TextSpan(
                  text: ButtonText,
                  style: TextStyle(
                    color: coloring,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(() => act))),
        ),
      ),
    );
  }
}
