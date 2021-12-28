//ignore_for_file: avoid_print
import 'dart:io';
import 'dart:math';

void main(){
  var i=0;
  var r = Random();
  var answer = r.nextInt(100);
  print('╔═══════════════════════════════════════════ ');
  print('║              GUESS THE NUMBER');
  print('╟───────────────────────────────────────────');

  int count = 0;
  while(true) {
    stdout.write("║ Guess the number between 1 and 100 : ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == answer){
      count++;
      print("║ ➜ "+guess.toString()+" is CORRECT ❤,total guesses: "+count.toString());
      print("╟───────────────────────────────────────────");
      print('║                  THE END');
      print('╚═══════════════════════════════════════════ ');
      break;
    }else{
      if(guess != null){
        count++;
        if(guess > answer){
          print("║ ➜ "+guess.toString()+" is TOO HIGH! ▲");
          print("╟───────────────────────────────────────────");
        }else if(guess < answer){
          print("║ ➜ "+guess.toString()+" is TOO LOW! ▼");
          print("╟───────────────────────────────────────────");
        }
      }else{
        continue;
      }
    }
  }
}