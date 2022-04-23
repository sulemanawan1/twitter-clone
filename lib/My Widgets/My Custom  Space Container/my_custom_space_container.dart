import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class MySpaceCard extends StatelessWidget {
  const MySpaceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        child: Stack(
          children: [
            Positioned(
              left: 3,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.cover),
                  color: Colors.white,
                  border:
                  Border.all(color: Colors.white, width: 1.2),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 40,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.cover),
                  color: Colors.white,
                  border:
                  Border.all(color: Colors.white, width: 1.2),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 80,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.cover),
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
                left: 135,
                top: 20,
                child: Text(
                  "+10",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        width: 170,
        height: 50,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                HexColor('#711a9c'),
                HexColor('#d890fc'),
              ],
            ),
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
