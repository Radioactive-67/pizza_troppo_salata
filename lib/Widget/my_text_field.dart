import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  //const MyTextField({Key? key}) : super(key: key);
  final String hintText;
  final IconData icon;
  final Color iconColor;
  final bool obsText;
  final TextEditingController controller;
  MyTextField({required this.hintText, required this.icon, required this.iconColor, required this.obsText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        obscureText: obsText,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            prefixIcon: Icon(icon, color: iconColor,),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            )
        ),
      ),
    );
  }

}
