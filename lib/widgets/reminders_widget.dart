import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class RemindersWidget extends StatefulWidget {
  final String title;
  RemindersWidget({this.title});

  @override
  _RemindersWidgetState createState() => _RemindersWidgetState();
}

class _RemindersWidgetState extends State<RemindersWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: white),
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
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 27,
                  child: Icon(
                    FontAwesomeIcons.tools,
                    color: Colors.white,
                    size: 30,
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
            padding: const EdgeInsets.only(left: 5, bottom: 10),
            child: Row(
              children: [
                Text(
                  'Service on ',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '26 April',
                  style: TextStyle(
                      fontSize: 12,
                      color: themeColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.rupeeSign,
                  size: 15,
                  color: black,
                ),
                Text(
                  '24,000 ',
                  style: TextStyle(
                      color: black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    'Last invoice amt',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){},
            child: Container(
              height: 33,
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue
              ),
              child: Center(
                child: Text(
                  'Vehicle Renewal',
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}