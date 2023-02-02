import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<BMIdata> BMIHTTP(String weight, String height) async {
  var headers = {
    'X-RapidAPI-Key': '4cdc6e8d71msh6b445f38a593513p19f0f7jsn38e1e7f32d26',
    'X-RapidAPI-Host': 'body-mass-index-bmi-calculator.p.rapidapi.com'
  };
  var request = http.Request('GET', Uri.parse('https://body-mass-index-bmi-calculator.p.rapidapi.com/metric?X-RapidAPI-Key=4cdc6e8d71msh6b445f38a593513p19f0f7jsn38e1e7f32d26&X-RapidAPI-Host=body-mass-index-bmi-calculator.p.rapidapi.com&weight='+weight+'&height='+height));
  request.headers;
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    return BMIdata.fromJson(jsonDecode(request.body));

  }
  else {
    return BMIdata();
  }

}
class BMIdata {
  double? bmi = 0;
  String? weight;
  String? height;
  String? weightCategory;

  BMIdata({this.bmi, this.weight, this.height, this.weightCategory});

  BMIdata.fromJson(Map<String, dynamic> json) {
    bmi = json['bmi'];
    weight = json['weight'];
    height = json['height'];
    weightCategory = json['weightCategory'];
  }
  double? getbmi(){
    return this.bmi;
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bmi'] = this.bmi;
    data['weight'] = this.weight;
    data['height'] = this.height;
    data['weightCategory'] = this.weightCategory;
    return data;
  }


}