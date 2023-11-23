import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/task_data.dart';

class AddTaskScreen  extends StatelessWidget {
  const AddTaskScreen({super.key});


  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return  Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.indigo[400] ),),
           TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newValue){
              newTaskTitle = newValue;
            },
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal[400],
              primary: Colors.white
            ),
              onPressed: (){
              Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
              },
              child: const Text('Add'))
        ],
      ),
    );
  }
}
