void main() {
  // Testing all the functions
  print('Sum of 5 and 3 is ${sumTwoNumbers(5, 3)}');
  printNumbers();
  checkStringValue("hello");
  checkStringValue("yes");
  countdown();
  checkEvenOdd(5);
  checkEvenOdd(10);
  print('Largest number in the list is ${findLargest([
        10,
        20,
        5,
        3,
        100,
        50,
        25
      ])}');
  demoTryCatch();
}

// Function to sum two numbers
int sumTwoNumbers(int a, int b) {
  return a + b;
}

// Function to print numbers from 1 to 10
void printNumbers() {
  print('Printing numbers from 1 to 10:');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Function using a switch statement to respond to different strings
void checkStringValue(String value) {
  print('Response to "$value":');
  switch (value) {
    case "hello":
      print("Hello there!");
      break;
    case "goodbye":
      print("Goodbye now!");
      break;
    case "yes":
      print("Affirmative!");
      break;
    case "no":
      print("Negative!");
      break;
    default:
      print("Unknown command");
  }
}

// Function to print numbers from 20 to 10 using a while loop
void countdown() {
  print('Counting down from 20 to 10:');
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// Function to check if a number is even or odd
void checkEvenOdd(int num) {
  print('$num is ${num % 2 == 0 ? "even" : "odd"}.');
}

// Function to find the largest number in a list
int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

// Function using try-catch to handle exceptions
void demoTryCatch() {
  print('Demonstrating try-catch with division by zero:');
  try {
    var result = 100 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("Caught an exception: $e");
  }
}
