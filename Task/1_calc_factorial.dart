import 'dart:io';

void main() {
//first method

  /* int no = 5;

  int result = 1;
  for (int i = 1; i <= no; i++) {
    result *= i;
  }

  print('Factorial of $no is $result'); */

//end first method

//second method

  /*
   print('Enter N');
  int N = int.parse(stdin.readLineSync()!);
 
  int result = 1;
  for (int i = 1; i <= N; i++) {
    result *= i;
  }
 
  print('Factorial of $N');
  print(result);*/
  //make sure it wont return null
  //by pass dart's null safety checks

// ! safer approach
//third method

  print('Enter a number = ');
  String? input = stdin.readLineSync();

/*the int.parse method is throwing a FormatException when the input is an empty string 
(which is not a valid integer). To handle this situation kena letak input.isNotEmpty*/

  if (input != null && input.isNotEmpty) {
    int n = int.parse(input);
    int result = 1;
    for (int i = 1; i <= n; i++) {
      result *= i;
    }
    print('Factorial of $n is $result');
  } else {
    print("Input could not be null");
  }
}
