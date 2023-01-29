import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_health_companion/login_page.dart';
import 'package:my_health_companion/welcome_page.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initalScreen);
}

    _initalScreen(User? user){
    if(user == null){
      print("Login page");
      Get.offAll(()=>LoginPage());
    }else{
      Get.offAll(()=>WelcomePage());
    }
}
  Future<void> register(String email, password) async {
    try{
    await  auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About User", "User message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Account creation failed",
              style: TextStyle(
                color: Colors.white
              ),
        ),
        messageText: Text(
          e.toString(),
            style: TextStyle(
                color: Colors.white
            )
        )

      );
    }
  }

}