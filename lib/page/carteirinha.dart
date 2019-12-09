import 'package:flutter/material.dart';

class CarteirinhaPage extends StatefulWidget {
  @override
  _CarteirinhaPageState createState() => _CarteirinhaPageState();
}

class _CarteirinhaPageState extends State<CarteirinhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Image.asset(
          "assets/plasa.png",
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 50.0,
              left: 20.0,
              right: 20.0,
              child: Container(
                width: 200,
                height: 580,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(52),
                    topRight: Radius.circular(52),
                    bottomLeft: Radius.circular(52),
                    bottomRight: Radius.circular(52),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 400,
              height: 500,
              child: Image.asset("assets/person5.png"),
            ),
          ],
        ),
      ),
    );
  }
}
