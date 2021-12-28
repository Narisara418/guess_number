// ignore_for_file: avoid_print

import 'dart:io';
import 'game.dart';

void main() {
  //literal ค่าที่มองเห็นเลยไม่ต้องผ่านตัวแปรใดๆ const
  List<int> myList = [];
  int count1=0;

  while (true) {
    stdout.write('Enter a maximum number to random: ');
    var input1 = stdin.readLineSync();
    var num = int.tryParse(input1!);
    if (num == null) {
      continue;
    }


    var game = Game(maxRandom:num);
    var isCorrect = false;
    var check = false;

    print('╔════════════════════════════════════════');
    print('║            GUESS THE NUMBER            ');
    print('╟────────────────────────────────────────');

    do {
      stdout.write('║ Guess the number between 1 and $num: ');
      var input2 = stdin.readLineSync();
      var guess = int.tryParse(input2!);
      if (guess == null) {
        continue;
      }

      var result = game.doGuess(guess);
      if (result == 1) {
        print('║ ➜ $guess is TOO HIGH! ▲');
        print('╟────────────────────────────────────────');
      } else if (result == -1) {
        print('║ ➜ $guess is TOO LOW! ▼');
        print('╟────────────────────────────────────────');
      } else {
        stdout.write('║ ➜ $guess is CORRECT ❤, total guesses: ');
        print(game.guessCount);
        print('╟────────────────────────────────────────');
        print('║                 THE END                ');
        print('╚════════════════════════════════════════');
        isCorrect = true;
      }

    } while (!isCorrect);
    while (true) {
      stdout.write('Play again? (Y/N): ');
      var again = stdin.readLineSync();
      if (again == 'Y' || again == 'y') {
        myList.add(game.guessCount);
        check = false;
        break;
      } else if (again == 'N' || again == 'n') {
        myList.add(game.guessCount);
        check = true;
        break;
      } else {
        continue;
      }
    }

    if (check == false) {
      continue;
    }else{
      break;
    }

  }

  print('You have played ${myList.length} games');
  for (var i = 0; i < myList.length; i++) {
    stdout.write('🚀 Game #${i+1}: ${myList[i]} guesses\n');
  }


}
