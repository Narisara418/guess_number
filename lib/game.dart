// ignore_for_file: avoid_print

import 'dart:math';
import 'dart:io';

class Game {
  // camel case
  static List<int> myList = [];
  int? _answer;
  int guessCount = 0;

  Game({int maxRandom = 100}) {
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;
  }


  //กรณี guessCount เป็น private
  /*int getCount(){
    return _guessCount;
  }*/


  int doGuess(int num) {
    guessCount++;
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      myList.add(guessCount);
      return 0;
    }
  }

    void DisplayResult(){
      print('You have played ${myList.length} games');
      for (var i = 0; i < myList.length; i++) {
        stdout.write('🚀 Game #${i+1}: ${myList[i]} guesses\n');
      }

    }

}
