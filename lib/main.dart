import "package:flutter/material.dart";
import 'package:sattwik_nutritionapp/dashboardPage.dart';
import 'package:sattwik_nutritionapp/homePage.dart';
import 'package:sattwik_nutritionapp/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sattwik_nutritionapp/signUp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange),
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
      routes: <String,WidgetBuilder>{

        "Login" : (BuildContext context)=>Login(),
        "SignUp":(BuildContext context)=>SignUp(),
        "HomePage":(BuildContext context)=>HomePage(),
      },
    );
  }
}
