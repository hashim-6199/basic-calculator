import 'dart:io';

/// 📌 Dart Calculator Program
/// This is a menu-driven Dart console app that lets the user:
/// - Perform arithmetic operations: Add, Subtract, Multiply, Divide
/// - Perform comparison operations: Greater, Lesser, Equal
/// The user selects an operation from a menu, then inputs two numbers.
/// The result is printed based on the selected operation.

void main() {
  print("🧮 Welcome to the Dart Calculator!");
  print("-----------------------------------");

  // Display the menu in a loop so the user can continue using the calculator
  while (true) {
    print("\nPlease choose an option:");
    print("1. Addition (+)");
    print("2. Subtraction (-)");
    print("3. Multiplication (*)");
    print("4. Division (/)");
    print("5. Greater Number");
    print("6. Lesser Number");
    print("7. Check Equality (==)");
    print("0. Exit");

    stdout.write("Enter your choice (0-7): ");
    String? choiceInput = stdin.readLineSync();
    int choice = int.tryParse(choiceInput ?? '') ?? -1;

    if (choice == 0) {
      print("👋 Thank you for using the Dart Calculator. Goodbye!");
      break;
    }

    // Read two numbers from the user
    stdout.write("Enter the first number: ");
    double? num1 = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write("Enter the second number: ");
    double? num2 = double.tryParse(stdin.readLineSync() ?? '');

    if (num1 == null || num2 == null) {
      print("❌ Invalid input. Please enter valid numbers.");
      continue;
    }

    // Perform operation based on user choice
    switch (choice) {
      case 1:
        print("✅ Result: $num1 + $num2 = ${num1 + num2}");
        break;
      case 2:
        print("✅ Result: $num1 - $num2 = ${num1 - num2}");
        break;
      case 3:
        print("✅ Result: $num1 × $num2 = ${num1 * num2}");
        break;
      case 4:
        if (num2 == 0) {
          print("❌ Cannot divide by zero.");
        } else {
          print("✅ Result: $num1 ÷ $num2 = ${num1 / num2}");
        }
        break;
      case 5:
        print("✅ Greater number is: ${num1 > num2 ? num1 : num2}");
        break;
      case 6:
        print("✅ Lesser number is: ${num1 < num2 ? num1 : num2}");
        break;
      case 7:
        print(num1 == num2
            ? "✅ $num1 is equal to $num2"
            : "❌ $num1 is not equal to $num2");
        break;
      default:
        print("❌ Invalid option. Please select from the menu.");
    }
  }
}
