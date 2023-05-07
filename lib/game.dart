import 'dart:math';
import 'dart:io';

main() {
  var rng = Random();
  var number=rng.nextInt(100);
  int nguesses=1;
  int guess;
   // print(number); // printing the number
  
  do { 
      print("Guess the number between 1 to 100\n"); 
      guess = int.parse(stdin.readLineSync().toString());
    if(guess>number){
      print("Lower the number please\n");
    }
    else if(guess<number){
      print("Higher the number please\n");
    }
    else{
      print("you guessed in $nguesses attempts\n ");
    }
    
      nguesses++; 
   }
   while(guess!=number); 
}




