import 'package:flutter/material.dart';

import 'Widget/my_text_field.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  RegExp regExp = RegExp(SignUpPage.pattern.toString());
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool validation() {
    if (firstName.text.trim().isEmpty || firstName.text.trim() == null) {
      globalKey.currentState!.showSnackBar(
        SnackBar(
          content: Text(
            "firstName is Empty",
          ),
        ),
      );
      return false;
    }
    if (lastName.text.trim().isEmpty || lastName.text.trim() == null) {
      globalKey.currentState!.showSnackBar(
        SnackBar(
          content: Text(
            "lastName is Empty",
          ),
        ),
      );
      return false;
    }
    if (email.text.trim().isEmpty || email.text.trim() == null) {
      globalKey.currentState!.showSnackBar(
        SnackBar(
          content: Text(
            "Email is Empty",
          ),
        ),
      );
      return false;
    }
    else if (!regExp.hasMatch(email.text)) {
      globalKey.currentState!.showSnackBar(
        SnackBar(
          content: Text(
            "Please enter vaild Email",
          ),
        ),
      );
      return false;
    }
    if (password.text.trim().isEmpty || password.text.trim() == null) {
      globalKey.currentState!.showSnackBar(
        SnackBar(
          content: Text(
            "Password is Empty",
          ),
        ),
      );
      return false;
    } else {
      setState(() {
        //loading=true;
      });
      //sendData();
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: globalKey,
        backgroundColor: Color(0xff2b2b2b),
        appBar: AppBar(
          backgroundColor: Color(0xff2b2b2b),
          title: Text(
            "Pizza Troppo Salata",
            style: TextStyle(),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
              onPressed: (){
                Navigator.of(context).pop();
              }
          ),
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    MyTextField(
                      hintText: 'First Name',
                      icon: Icons.person_outline,
                      iconColor: Colors.grey,
                      obsText: false,
                      controller: firstName,
                    ),
                    MyTextField(
                      hintText: 'Last Name',
                      icon: Icons.person,
                      iconColor: Colors.grey,
                      obsText: false,
                      controller: lastName,
                    ),
                    MyTextField(
                      hintText: 'email',
                      icon: Icons.email_outlined,
                      iconColor: Colors.grey,
                      obsText: false,
                      controller: email,
                    ),
                    MyTextField(
                      hintText: 'password',
                      icon: Icons.lock,
                      iconColor: Colors.grey,
                      obsText: true,
                      controller: password,
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      bool next =validation();
                      if(next){
                        Navigator.of(context).pushReplacementNamed('/shopScreen');
                      }
                    },
                    child: Container(
                      width: 150,
                      alignment: Alignment.center,
                      child: Text(
                        "Sign Up",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ? ",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/login');
                      },
                      child: Container(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
