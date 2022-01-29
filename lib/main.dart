import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent.shade700,
            title: Text("Ask Me Anything",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          body: Decision(),
        ),
      ),
    );

class Decision extends StatefulWidget {
  @override
  _DecisionState createState() => _DecisionState();
}

class _DecisionState extends State<Decision> {
  int changePic = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 150.0),
              child: Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        changePic = Random().nextInt(5) + 1;
                      });
                    },
                    child: Image(
                      image: AssetImage(
                        "images/ball$changePic.png",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

