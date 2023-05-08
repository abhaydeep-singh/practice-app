import 'package:flutter/material.dart';
// import 'widgets/buttons.dart'; // giving reference to buttons.dart

void main() => runApp(Abhay());

class Abhay extends StatefulWidget {
  const Abhay({super.key});

  @override
  State<Abhay> createState() => AbhayState();
}

class AbhayState extends State<Abhay> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Simple Counter App"),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Counter: $count ",
                    style: TextStyle(fontSize: 35),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 60,
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          count++;
                          setState(() {});
                        },
                        child: Text("+", style: TextStyle(fontSize: 25))),
                  ),
                  SizedBox(height: 40,),

                  ElevatedButton(
                      onPressed: () {
                        count = 0;
                  
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white),
                      child: Icon(Icons.delete))
                ],
              ),
            ),
          )),
    );
  }
}
