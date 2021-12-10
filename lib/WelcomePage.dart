import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2b2b2b),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
                child: Container(
                  //color: Colors.lightBlueAccent,
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 10),
                  child: Center(
                    child: Image.asset('assets/chef.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                //color: Colors.lightGreenAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "Pizza Troppo Salata",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "Tasty Pizza Inside!!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Column(
                        children: [
                          Text(
                            "Unleash Your Inner Chef - Make your own pizzas!",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "A pizza specially made for you, by you!",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      child: Container(
                        width: 150,
                        alignment: Alignment.center,
                        child: Text(
                          "Log In",
                          style: TextStyle(),
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  //side: BorderSide(color: Colors.red)
                              )
                          )
                      )
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/signup');
                        },
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          child: Text(
                            "Sign UP",
                            style: TextStyle(),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  //side: BorderSide(color: Colors.red)
                                )
                            )
                        )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
