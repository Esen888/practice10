import 'dart:io';

void main() {
  int min = 0;
  int max = 128;
  int mid = (min + max) ~/ 2;
  String ans = "";
  int count = 0;

  print("Загадай число");
  while (ans != "yes") {
   
    print("твое число $mid?");
    ans = stdin.readLineSync()!;

    if (ans == "less") {
      max = mid;
      mid = (max + min) ~/ 2;
       count++;

      print(" твое число $mid?");
    } else if (ans == "greater") {
      min = mid;
      mid = (max + min) ~/ 2;
       count++;
    } else if (ans == "yes") {
      print("конец игры");
       
        count++;
    }
    else {
      print("Вы ввели некор данные");
      ans = stdin.readLineSync()!;
    }
  }
print("вы ввели $count чисел");
  print(" твое число $mid!");
 
}
