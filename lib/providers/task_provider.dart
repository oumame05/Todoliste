import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/task.dart';

class TaskProvider with ChangeNotifier {
  List<Task> _tasks = [];
  final String _prefKey = 'tasks_data';

  List<Task> get tasks => _tasks;

  int get remainingTasksCount => _tasks.where((task) => !task.isCompleted).length;

  TaskProvider() {
    _loadTasks();
  }

  void addTask(Task task) {
    _tasks.add(task);
    _saveTasks();
    notifyListeners();
  }

  void toggleTask(String id) {
    final index = _tasks.indexWhere((task) => task.id == id);
    if (index != -1) {
      _tasks[index] = _tasks[index].copyWith(isCompleted: !_tasks[index].isCompleted);
      _saveTasks();
      notifyListeners();
    }
  }

  void removeTask(String id) {
    _tasks.removeWhere((task) => task.id == id);
    _saveTasks();
    notifyListeners();
  }

  Future<void> _loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final tasksStringList = prefs.getStringList(_prefKey) ?? [];
    
    _tasks = tasksStringList.map((taskStr) => Task.fromJson(taskStr)).toList();
    notifyListeners();
  }

  Future<void> _saveTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final tasksStringList = _tasks.map((task) => task.toJson()).toList();
    await prefs.setStringList(_prefKey, tasksStringList);
  }
}
