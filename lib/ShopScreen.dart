import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  bool _checked1 = false;
  bool _checked2 = false;
  bool _checked3 = false;
  bool _checked4 = false;
  bool _checked5 = false;
  bool _checked6 = false;
  bool _checked7 = false;
  bool _checked8 = false;
  bool _checked9 = false;
  bool _checked10 = false;
  bool _checked11 = false;
  bool _checked12 = false;
  bool _checked13 = false;
  bool _checked14 = false;
  bool _checked15 = false;
  bool _checked16 = false;


  Widget card({ required String image, required String leading, required String trailing}){
    return Container(
      height: 250,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color(0xff3a3e3e),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius:55,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(image),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                    leading,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    trailing,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2b2b2b),
        appBar: AppBar(
          backgroundColor: Color(0xff2b2b2b),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.of(context).pop(); },),
          title: Text(
            "Pizza Troppo Salata !",
            style: TextStyle(),
          ),
        ),
        body: Stack(
          alignment: Alignment(1.0,1.0),
          children:[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: GridView.count(
                shrinkWrap: false,
                primary: false,
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/bread1.jpg', leading: 'Oven Bread', trailing: '₹150'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked1,
                        onChanged: (bool? value){
                          setState(() {
                            _checked1 = value!;
                            _checked2 = false;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/bread2.jpg', leading: 'Thin Crust', trailing: '₹150'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked2,
                        onChanged: (bool? value){
                          setState(() {
                            _checked2 = value!;
                            _checked1 = false;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/sauce1.jpg', leading: 'Peri Peri Sauce', trailing: '₹100'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked3,
                        onChanged: (bool? value){
                          setState(() {
                            _checked3 = value!;
                            _checked4 = false;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/sauce2.jpg', leading: 'Italian Sauce', trailing: '₹100'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked4,
                        onChanged: (bool? value){
                          setState(() {
                            _checked4 = value!;
                            _checked3 = false;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/chicken1.jpg', leading: 'Tandoori Chicken', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked5,
                        onChanged: (bool? value){
                          setState(() {
                            _checked5 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/chicken2.jpg', leading: 'Crispy Chicken', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked6,
                        onChanged: (bool? value){
                          setState(() {
                            _checked6 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/green_chillies.jpg', leading: 'Green Chillies', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked7,
                        onChanged: (bool? value){
                          setState(() {
                            _checked7 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/green_peppers.jpg', leading: 'Bell Pepper', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked8,
                        onChanged: (bool? value){
                          setState(() {
                            _checked8 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/goldencorn.jpg', leading: 'Golden Corn', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked9,
                        onChanged: (bool? value){
                          setState(() {
                            _checked9 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/mozerella.jpg', leading: 'Mozzarella', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked10,
                        onChanged: (bool? value){
                          setState(() {
                            _checked10 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/mushrooms.jpg', leading: 'Mushrooms', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked11,
                        onChanged: (bool? value){
                          setState(() {
                            _checked11 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/paneer.jpg', leading: 'Tandoori Paneer', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked12,
                        onChanged: (bool? value){
                          setState(() {
                            _checked12 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/olives.jpg', leading: 'Olives', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked13,
                        onChanged: (bool? value){
                          setState(() {
                            _checked13 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/onions.jpg', leading: 'Onions', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked14,
                        onChanged: (bool? value){
                          setState(() {
                            _checked14 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/pineapples.jpg', leading: 'Pineapple', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked15,
                        onChanged: (bool? value){
                          setState(() {
                            _checked15 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment(1.0,-1.0),
                    children: [
                      card(image: 'assets/tomatos.jpg', leading: 'Tomatoes', trailing: '₹50'),
                      CheckboxListTile(
                        activeColor: Colors.redAccent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _checked16,
                        onChanged: (bool? value){
                          setState(() {
                            _checked16 = value!;
                          });
                        },
                      ),
                    ],
                  ),

                ],
              ),


            ),
            Container(
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/orderScreen');
                },
                child: Icon(Icons.shopping_cart_outlined),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(CircleBorder()),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent), // <-- Button color
                  overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
                    if (states.contains(MaterialState.pressed)) return Colors.red; // <-- Splash color
                  }),
                ),
              ),
            ),
          ]
        ),

      ),
    );
  }
}
