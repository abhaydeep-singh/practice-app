import 'main.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Intro Page")),
      body: Center(
        child: Column(children: [
          SizedBox( height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return MyHomePage();}));
          }, child: Text("Home Page"))
        ],),
      )
    
      

    );
  }
}