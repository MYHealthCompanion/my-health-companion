import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: colors.grey,
      body: Column(
        children: [
          SizedBox(height: 150),
          SafeArea(
            child: Center(
              child: Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15.0,
                    )
                  ],
                ),
                child: Container(
                  // Login Field Container
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.grey.shade100, Colors.grey.shade400],
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'User Name',
                                hintText: 'Enter your name'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                hintText: 'Enter your password'),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [BoxShadow(blurRadius: 2)],
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
