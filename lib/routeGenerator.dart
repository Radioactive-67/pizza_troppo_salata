import 'package:flutter/material.dart';
import 'package:pizza_troppo_salata/ShopScreen.dart';
import 'package:pizza_troppo_salata/WelcomePage.dart';
import 'package:pizza_troppo_salata/login_page.dart';
import 'package:pizza_troppo_salata/sign_up.dart';
import 'main.dart';
import 'orderScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case '/shopScreen':
        return MaterialPageRoute(builder: (_) => ShopScreen());
      case '/orderScreen':
        return MaterialPageRoute(builder: (_) => OrderScreen());
      //case '/data':
      // Validation of correct data type
      //   if (args is String) {
      //     return MaterialPageRoute(
      //       builder: (_) => SecondPage(
      //         data: args,
      //       ),
      //     );
      //   }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Something went astray please restart the app!'),
        ),
      );
    });
  }
}