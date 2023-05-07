import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(Abhay());

class Abhay extends StatelessWidget {
  Abhay({super.key});
  var guess = TextEditingController();
 
 callback(){
 


  var rng = Random();
  var number=rng.nextInt(100);
  int nguesses=1;
  int passGuess;
  // int guess;
  // print(number); // printing te number

  do { 
      print("Guess the number between 1 to 100\n"); 
      passGuess =int.parse(guess.text);
    if(passGuess > number){
      print("Lower the number please\n");
    }
    else if(passGuess<number){
      print("Higher the number please\n");
    }
    else{
      print("you guessed in $nguesses attempts\n ");
    }
    
      nguesses++; 
   }
   while(passGuess!=number); 

  }






  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Form'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(labelText: "Enter the number"),
              controller: guess,
              keyboardType: TextInputType.number,
             
            ),
            const SizedBox(
              height: 15,
            ),
            
            ElevatedButton(
                onPressed: () {
                  
                  callback();
                  
                //  print("Password = $pass");
                },
                child: const Text('submit'))
          ],
        ),
      ),
    ));
  }
}