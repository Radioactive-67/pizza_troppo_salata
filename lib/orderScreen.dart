import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2b2b2b),
        appBar: AppBar(
          backgroundColor: Color(0xff2b2b2b),
          title: Text(
            "Your Order",
          ),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded), onPressed: (){ Navigator.of(context).pop(); },),
        ),
        body: Center(
          child: Container(
            height: 600,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xff3a3e3e),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 250,
                  width: 300,
                  //color: Colors.redAccent,
                  child: Image(image: AssetImage('assets/order.png'),),
                ),
                Container(
                  height: 290,
                  width: 300,
                  //color: Colors.blueAccent,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 157,
                              alignment: Alignment.centerLeft,
                              //color: Colors.black,
                              child: Text(
                                "Ingridents Selected:",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 130,
                              //color: Colors.greenAccent,
                              alignment: Alignment.centerRight,
                              child: Text(
                                "₹500",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                        //color: Colors.redAccent,
                        height: 60,
                        width: 300,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1 x Thincrust Bread",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "1 x Peri Peri Sauce",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "1 x Mushrooms",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "1 x Onions",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "1 x Tomatoes",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "1 x Paneer",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "1 x Golden Corn",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Thank You for Ordering!",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
