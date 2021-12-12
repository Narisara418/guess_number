import 'dart:math';

void main(){
  print('HELLO DART');

  // ภาษา Dart จะทำการ infer type ให้เราโดยดูจากค่าเริ่มต้น
  // ที่เรากำหนดให้กับตัวแปร
  // กระบวนการ type inference ของภาษา Dart
  var i = 123; // interger literal
  var r = new Random();
  var b = true;

  var j; // Dart จะกำหนด type เป็น dynamic
  j = 123;
  j = "hello";

}