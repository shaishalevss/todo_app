import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F4F4F),
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
                Text(
                  'Todo List:',
                  style: TextStyle(
                    color: Color(0xFF7FFFD4),
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'IndieFlower',
                  ),
                ),
                Text(
                  '4 Tasks',
                  style: TextStyle(
                    color: Color(0xFF00FFFF),
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5FFFA),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFDC143C),
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
