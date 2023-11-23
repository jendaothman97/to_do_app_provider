import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/widgets/task_tile.dart';

import '../model/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData data, Widget? child) {
        return ListView.builder(
          itemCount: data.tasks.length,
          itemBuilder: (context, int index) {
            return ListTile(
              title: TaskTile(
                task: data.tasks[index],
                checkBoxChange: (_) {
                  data.updateTask(data.tasks[index]);
                },),
            );
          },
        );
      },
    );
  }
}
