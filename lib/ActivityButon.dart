import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ActButon<type> extends StatelessWidget {
  const ActButon(
      {Key? key,
        required this.w,
        required this.h,
        required this.ButtonText,
        required this.act})
      : super(key: key);

  final double w;
  final double h;
  final String ButtonText;
  final type act;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w * 0.5,
      height: h * 0.08,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage("img/loginbtn.png"), fit: BoxFit.cover)),
      child: Center(
        child: RichText(
            text: TextSpan(
                text: ButtonText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Get.to(() => act))),
      ),
    );
  }
}