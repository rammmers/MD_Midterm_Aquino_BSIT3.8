# Learning Resource Management System

**Name:** Ram B. Aquino  
**Section:** BSIT 3.8
**Subject:** Mobile Development  
**Activity:** Midterm Laboratory Examination

## Application Description

The Learning Resource Management System is a simple Dart console application designed to manage learning resources and participants. It allows users to add learning resources, register participants, and view all stored records through a menu-driven interface.

## Application Features

1. **Add Learning Resource** – Allows users to enter a resource title and category. Each resource receives an automatically generated ID.
2. **Register Participant** – Allows users to register participants by entering their name and email. Each participant receives a unique ID.
3. **View All Records** – Displays all registered learning resources and participants, including their details and dates.
4. **Exit** – Closes the application.

## Concepts Implemented

- Variables and Data Types: Uses String, int, and bool.
- Input and Output: Uses `stdin.readLineSync()` and `stdout.write()` for user interaction.
- Conditional Statements: Uses `if/else` and `switch`.
- Loops: Uses `while` and `for` loops.
- Functions: Uses user-defined functions such as `getInput()`, `displayMenu()`, and system methods.
- Classes and Objects: Uses `LearningResource`, `Participant`, and `LearningResourceSystem`.
- Constructors: Initializes learning resource and participant objects.
- Encapsulation: Uses private fields such as `_title`, `_category`, `_name`, and `_email`, with getters for controlled access.
- Abstraction: Uses the abstract class `CenterRecord`.
- Inheritance: `LearningResource` and `Participant` inherit from `CenterRecord`.
- Polymorphism: Both subclasses implement their own `displayDetails()` method.
- Mixin: Uses `Timestamp` to provide reusable date functionality.
- Collections: Uses a List to store all records and Maps to organize resources and participants.
- Error Handling: Uses `try-catch` and input validation to handle invalid entries.

# Sample Test Scenarios

# Test 1: Add a Learning Resource

1. Select option `1`.
2. Enter the resource title: `Introduction to Dart`.
3. Enter the category: `Programming Book`.

# Expected Result: The system successfully adds the resource and generates an ID such as R001.

# Test 2: Register a Participant

1. Select option `2`.
2. Enter the participant name: `Juan Dela Cruz`.
3. Enter the email: `juan@gmail.com`.

# Expected Result: The system successfully registers the participant and generates an ID such as P001.

# Test 3: Invalid Input

1. Enter `abc` instead of a menu number.
2. Enter `10` as the menu choice.
3. Select option `1` and leave the resource title blank.

# Expected Result: The system displays an appropriate error message and continues running without crashing.

# How to Run the Program Using DartPad

1. Visit [https://dartpad.dev](https://dartpad.dev).
2. Copy the contents of `main.dart`.
3. Paste the code into the Dart editor.
4. Run the program and interact with the console.

1. Install the Dart SDK.
2. Save the source code as `main.dart`.
3. Open a terminal in the project folder.
4. Execute the following command:

# dart run main.dart

MD_Midterm_[Surname]_[Section]/
│
├── main.dart
└── README.md


This application uses in-memory storage. Records are available only while the program is running. Closing the application clears the stored records.

**Developed using Dart for the Mobile Development Midterm Laboratory Examination.**
