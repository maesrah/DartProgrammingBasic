import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  // int randomNumber = random.nextInt(10) + 1;
  int minNumber = 1;
  int maxNumber = 50;
  int randomNumber = minNumber + random.nextInt(maxNumber - minNumber + 1);

  print('Welcome to the Guess the Random Number Game!');
  print('I have selected a number between $minNumber and $maxNumber');
  print("Guess the number: ");
  int? guessNo;

  // if (number == randomNumber) {
  //   print('You guessed the correct number!');
  // } else {
  //   print('Wrong');
  // }

  while (guessNo != randomNumber) {
    print("Guess the number: ");
    String? number1 = stdin.readLineSync();

    if (number1 != null && number1.isNotEmpty) {
      guessNo = int.parse(number1);

      if (guessNo < minNumber || guessNo > maxNumber) {
        print('Please enter a number between $minNumber and $maxNumber');
      } else if (guessNo < randomNumber) {
        print('Too low! Try again');
      } else if (guessNo > randomNumber) {
        print('Too high!Try again');
      } else {
        print('Congratulations!,You guess the correct number : $randomNumber');
      }
    } else {
      print("Invalid input");
    }
  }
}
