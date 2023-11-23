import 'package:flutter/material.dart';

import '../model/task_model.dart';

class TaskTile extends StatelessWidget {

  final Task task;
  final void Function(bool?) checkBoxChange;

  const TaskTile({super.key,required this.task,required this.checkBoxChange});

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(task.name),
          Checkbox(
            onChanged: checkBoxChange ,
            value: task.isDone,),
        ],
      ),
    );
  }
}


