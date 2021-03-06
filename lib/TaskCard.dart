import 'package:flutter/material.dart';
import 'package:state_mangement/task.dart';
class TaskCard extends StatelessWidget {

  final Task task;
 final Function removeTask;
  TaskCard({this.task,this.removeTask});


  @override
  Widget build(BuildContext context) {
    return Card(
      child:ListTile (
        title: Text(task.name),
        trailing: IconButton(
          icon:Icon(Icons.clear,color:Colors.red,),
          onPressed: removeTask,
        ),
      ),
    );
  }
}
