import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'First Task'),
    Task(name: 'Second Task'),
    Task(name: 'Third Task'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }
}
