import 'package:flutter/material.dart';

import 'Widget/my_text_field.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  bool validation(){
    if (userName.text.trim().isEmpty || userName.text.trim() == null) {
      globalKey.currentState!.showSnackBar(
        SnackBar(
          content: Text(
            "UserName is Empty",
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
    }
    else {
      setState(() {
        //loading=true;
      });
      return true;
      //sendData();
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
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
              onPressed: (){
                Navigator.of(context).pop();
              }
              ),
          title: Text(
            "Pizza Troppo Salata",
            style: TextStyle(

            ),
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
                  "Log In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
                    MyTextField(
                        hintText: 'User Name',
                        icon: Icons.person,
                        iconColor: Colors.grey,
                        obsText: false,
                        controller: userName,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New User ? ",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/signup');
                      },
                      child: Container(
                        child: Text(
                          "Register Here !",
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
