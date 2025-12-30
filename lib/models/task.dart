import 'package:uuid/uuid.dart';

class Task {
  String id;
  String title;
  String subtitle;
  DateTime createdAtTime;
  DateTime createdAtDate;
  bool isCompleted;

  Task({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.createdAtTime,
    required this.createdAtDate,
    this.isCompleted = false,
  });

  /// Factory constructor to create a new task
  factory Task.create({
    required String title,
    required String subtitle,
    DateTime? createdAtTime,
    DateTime? createdAtDate,
  }) {
    return Task(
      id: const Uuid().v1(),
      title: title,
      subtitle: subtitle,
      createdAtTime: createdAtTime ?? DateTime.now(),
      createdAtDate: createdAtDate ?? DateTime.now(),
      isCompleted: false,
    );
  }

  /// Convert Task to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'createdAtTime': createdAtTime.toIso8601String(),
      'createdAtDate': createdAtDate.toIso8601String(),
      'isCompleted': isCompleted,
    };
  }

  /// Create Task from Map
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      subtitle: map['subtitle'],
      createdAtTime: DateTime.parse(map['createdAtTime']),
      createdAtDate: DateTime.parse(map['createdAtDate']),
      isCompleted: map['isCompleted'] ?? false,
    );
  }
}
