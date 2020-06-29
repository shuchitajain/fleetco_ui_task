import 'package:fleetco_task/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpenseWidget extends StatefulWidget {
  final Color color;
  final Color progressColor;
  final IconData icon;
  final String title;

  ExpenseWidget({this.color, this.icon, this.title, this.progressColor});

  @override
  _ExpenseWidgetState createState() => _ExpenseWidgetState();
}

class _ExpenseWidgetState extends State<ExpenseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xfff3f6fb)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                      color: widget.color,
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: Icon(
                    widget.icon,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.ellipsisH,
                  size: 20,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5, bottom: 10),
            child: Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Text(
                  'AVG spent ',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  FontAwesomeIcons.rupeeSign,
                  size: 10,
                  color: themeColor,
                ),
                Text(
                  '24,000 ',
                  style: TextStyle(
                      color: themeColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'a week',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: FAProgressBar(
              currentValue: 60,
              displayText: '%',
              backgroundColor: Colors.grey[400],
              progressColor: widget.progressColor,
              borderRadius: 24,
              size: 30,
            )
          ),
          Container(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: white,
                ),
                Container(
                  width: 130,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'Your Fuel budget is on a good condition',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
