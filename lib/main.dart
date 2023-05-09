import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Abhay());

class Abhay extends StatefulWidget {
  const Abhay({super.key});

  @override
  State<Abhay> createState() => AbhayState();
}

class AbhayState extends State<Abhay> {
  var count = 0;
  // creating a random number
  var rand = Random().nextInt(100);

  var no1controller = TextEditingController();
  String guess = "Enter the number";
  String result = "";
  rando() {
    rand = Random().nextInt(100);
  }

  condition() {
    var no1 = int.parse(no1controller.text.toString());

    if (no1 == rand) {
      guess = "Your guess is right: $rand";
      result = "You guessed in $count attempts";
    } else if (no1 > rand) {
      guess = "Lower the number please";
    } else {
      guess = "Higher the number please";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Guess The Number"),
            backgroundColor: Colors.red,
          ),
          body: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(guess, style: TextStyle(fontSize: 22)),
                TextField(
                  controller: no1controller,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      count++;
                      condition();
                      setState(() {});
                    },
                    child: Text("Guess")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  result,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                    ),
                    onPressed: () {
                      result = "";
                      count = 0;
                      guess = "";
                      rando();

                      setState(() {});
                    },
                    child: Icon(Icons.delete))
              ],
            ),
          )),
    );
  }
}
