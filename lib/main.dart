import 'package:flutter/material.dart';
import 'package:pizza_troppo_salata/login_page.dart';
import 'package:pizza_troppo_salata/routeGenerator.dart';
import 'package:pizza_troppo_salata/sign_up.dart';
import 'WelcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Troppo Salata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SignUpPage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}




