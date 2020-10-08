import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_list.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F4F4F),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(),
                  )));
        },
        backgroundColor: Color(0xFFDC143C),
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 40.0,
                    color: Color(0xFF2F4F4F),
                  ),
                  backgroundColor: Color(0xFFF5FFFA),
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    'Todo List:',
                    style: TextStyle(
                      color: Color(0xFF7FFFD4),
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'IndieFlower',
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                    style: TextStyle(
                      color: Color(0xFF7FFFD4),
                      fontSize: 20.0,
                      fontFamily: 'BubblegumSans',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Color(0xFFF5FFFA),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}

//Color(0xFF2F4F4F) - greengrey
//Color(0xFFF5FFFA) - cream
//Color(0xFF7FFFD4) - textColor
