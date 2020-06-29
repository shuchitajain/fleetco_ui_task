import 'package:flutter/material.dart';

class StepProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 100,
      color: Colors.black,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.orange[200],
                height: 10,
                width: 10,
              )),
          Expanded(
            flex: 1,
            child: Container(color: Colors.red[500], height: 10),
          ),
          Expanded(
              child: Container(color: Colors.blue[800], height: 10)),
          Expanded(
            child: Container(color: Colors.green, height: 10),
          ),
          Expanded(
              child: Container(color: Colors.purpleAccent, height: 10)),
          Expanded(
            child: Container(color: Colors.grey, height: 10),
          )
        ],
      ),
    );
  }
}
