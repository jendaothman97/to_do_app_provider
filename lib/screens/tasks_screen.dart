import 'package:flutter/material.dart';
import 'package:to_do_provider/model/task_data.dart';
import 'package:to_do_provider/screens/add_task_screen.dart';
import 'package:to_do_provider/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo[400],
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context)=>
             SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: const AddTaskScreen()))
          );
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.only(top:30.0,right: 10,left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'ToDayDo',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color:  Colors.white),
                )
              ],
            ),
             Text(
              '${Provider.of<TaskData>(context).tasks.length} tasks',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0,left: 20,bottom: 60,top: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child:  TasksList()
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
