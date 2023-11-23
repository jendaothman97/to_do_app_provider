import 'package:flutter/material.dart';
import 'package:to_do_provider/model/task_model.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task(name: 'go shopping'),
    Task(name: 'go shopping'),
    Task(name: 'go shopping'),
    Task(name: 'go shopping'),
  ];

  void addTask(String title){
    tasks.add(Task(name: title));
    notifyListeners();
  }

  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }

}