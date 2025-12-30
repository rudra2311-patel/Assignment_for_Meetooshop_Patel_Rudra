import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskDataStore extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  /// Add a new task
  void addTask({required Task task}) {
    _tasks.add(task);
    notifyListeners();
  }

  /// Delete a task
  void deleteTask({required Task task}) {
    _tasks.removeWhere((t) => t.id == task.id);
    notifyListeners();
  }

  /// Update a task
  void updateTask({required Task task}) {
    final index = _tasks.indexWhere((t) => t.id == task.id);
    if (index != -1) {
      _tasks[index] = task;
      notifyListeners();
    }
  }

  /// Toggle task completion
  void toggleTaskCompletion({required Task task}) {
    final index = _tasks.indexWhere((t) => t.id == task.id);
    if (index != -1) {
      _tasks[index].isCompleted = !_tasks[index].isCompleted;
      notifyListeners();
    }
  }

  /// Delete all tasks
  void deleteAllTasks() {
    _tasks.clear();
    notifyListeners();
  }
}
