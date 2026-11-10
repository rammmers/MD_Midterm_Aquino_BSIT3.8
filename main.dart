import 'dart:io';

mixin Timestamp {
  String getDate() {
    return DateTime.now().toString();
  }
}
abstract class CenterRecord with Timestamp {
  String id;

  CenterRecord(this.id);

  String displayDetails();
}
class LearningResource extends CenterRecord {
  final String _title;
  final String _category;

  LearningResource(String id, String title, String category)
      : _title = title,
        _category = category,
        super(id);

  String get title => _title;
  String get category => _category;

  @override
  String displayDetails() {
    return 'Resource ID: $id\n'
        'Title: $_title\n'
        'Category: $_category\n'
        'Date Added: ${getDate()}';
  }
}
class Participant extends CenterRecord {
  final String _name;
  final String _email;

  Participant(String id, String name, String email)
      : _name = name,
        _email = email,
        super(id);

  String get name => _name;
  String get email => _email;

  @override
  String displayDetails() {
    return 'Participant ID: $id\n'
        'Name: $_name\n'
        'Email: $_email\n'
        'Date Registered: ${getDate()}';
  }
}
class LearningResourceSystem {
  final List<CenterRecord> records = [];
  final Map<String, LearningResource> resources = {};
  final Map<String, Participant> participants = {};

  int resourceCount = 1;
  int participantCount = 1;

  void addResource(String title, String category) {
    String id = 'R${resourceCount.toString().padLeft(3, '0')}';
    LearningResource resource = LearningResource(id, title, category);

    resources[id] = resource;
    records.add(resource);
    resourceCount++;

    print('\nResource added successfully!');
    print('Resource ID: $id');
  }
  void registerParticipant(String name, String email) {
    String id = 'P${participantCount.toString().padLeft(3, '0')}';
    Participant participant = Participant(id, name, email);

    participants[id] = participant;
    records.add(participant);
    participantCount++;

    print('\nParticipant registered successfully!');
    print('Participant ID: $id');
  }
  void viewRecords() {
    if (records.isEmpty) {
      print('\nNo records available.');
    } else {
      print('\n========== ALL RECORDS ==========');
      for (CenterRecord record in records) {
        print('\n${record.displayDetails()}');
        print('--------------------------------');
      }
      print('Total Records: ${records.length}');
    }
  }
}
String? getInput(String message) {
  stdout.write(message);
  String? input = stdin.readLineSync();
  if (input == null || input.trim().isEmpty) {
    print('Invalid input. Please try again.');
    return null;
  }
  return input.trim();
}
void displayMenu() {
  print('\n================================');
  print(' LEARNING RESOURCE MANAGEMENT');
  print('================================');
  print('1. Add Learning Resource');
  print('2. Register Participant');
  print('3. View All Records');
  print('4. Exit');
  print('================================');
}
void main() {
  final system = LearningResourceSystem();
  bool running = true;

  while (running) {
    displayMenu();
    stdout.write('Enter your choice: ');
    final input = stdin.readLineSync();

    try {
      final choice = int.parse(input ?? '');
      switch (choice) {
        case 1:
          final title = getInput('Enter resource title: ');
          if (title == null) break;
          final category = getInput('Enter resource category: ');
          if (category == null) break;
          system.addResource(title, category);
          break;
        case 2:
          final name = getInput('Enter participant name: ');
          if (name == null) break;
          final email = getInput('Enter participant email: ');
          if (email == null) break;
          system.registerParticipant(name, email);
          break;
        case 3:
          system.viewRecords();
          break;
        case 4:
          running = false;
          print('\nThank you for using the application!');
          break;
        default:
          print('\nInvalid choice. Please select 1-4.');
      }
    } catch (e) {
      print('\nInvalid input. Please enter a number.');
    }
  }
}
