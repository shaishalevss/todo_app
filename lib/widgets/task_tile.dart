import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: kTaskTileTextStyle,
      ),
      trailing: Checkbox(
        onChanged: null,
        value: false,
        hoverColor: Colors.white,
        checkColor: Colors.red,
        activeColor: Colors.green,
        focusColor: Colors.blue,
      ),
    );
  }
}
