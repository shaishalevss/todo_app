import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(22.0),
        decoration: BoxDecoration(
          color: Color(0xFFF5FFFA),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'IndieFlower',
                fontSize: 30.0,
                color: Color(0xFF2F4F4F),
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Color(0xFFF5FFFA),
                ),
              ),
              color: Color(0xFFDC143C),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
