import 'dart:io';

void main() {
  print('Enter the lenght of the List: ');
  int Listlenght = int.parse(stdin.readLineSync()!);

  List<int> userNumbers = [];

  int sumOfAllNumbers = 0;
  int sumOfEvenOdd = 0;
  int sumOfEven = 0;
  int sumOfOdd = 0;

  int index = 1;

  for (int i = 0; i < Listlenght; i++) {
    print('enter number $index: ');
    index++;
    int userInput = int.parse(stdin.readLineSync()!);
    userNumbers.add(userInput);
    sumOfAllNumbers += userNumbers[i];

    if (userInput % 2 == 0) {
      sumOfEven += userInput;
    } else {
      sumOfOdd += userInput;
    }
  }

  sumOfEvenOdd = sumOfEven + sumOfOdd;

  print('Your entered number List is: $userNumbers');
  print('Sum of the Numbers in the List: $sumOfAllNumbers');
  print('Sum of the Even Numbers in the List: $sumOfEven');
  print('Sum of the Odd Numbers in the List: $sumOfOdd');

  if (sumOfAllNumbers == sumOfEvenOdd) {
    print(
        'Sum of all numbers $sumOfAllNumbers is equal to sum of even and odd numbers $sumOfEvenOdd');
  } else {
    print(
        'Sum of all numbers $sumOfAllNumbers is not equal to sum of even and odd numbers $sumOfEvenOdd');
  }
}
