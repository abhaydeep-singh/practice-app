

import 'intropage.dart';
import 'package:flutter/material.dart';

void main() =>runApp(TestApp());

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage() // defined in intropage.dart
    );
  }
}
// A class act like a Page, here Intropage() class is called first, then by using elevated button we got routed to MyHomepage() Class.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Column( children: [
        SizedBox(height: 40,),
        Center(child: Text("This is your Home Page")),

      ],
    
      ),
    );
  }
}