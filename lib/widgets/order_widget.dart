import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class OrderWidget extends StatefulWidget {
  final Color color;
  final String leading;
  final String title;
  final String amt;
  final String date;
  final String code;
  final String id;

  OrderWidget(
      {this.color,
      this.leading,
      this.title,
      this.amt,
      this.date,
      this.id,
      this.code});

  @override
  _OrderWidgetState createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, top: 5),
      child: ListTile(
        leading: Container(
          height: 38,
          width: 38,
          decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(
            child: Text(
              widget.leading,
              style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
        title: Text(
          widget.title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            Text(
              'OrderID ${widget.id}',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              radius: 2,
              backgroundColor: widget.color,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              widget.code,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            )
          ],
        ),
        trailing: Container(
          width: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.rupeeSign,
                    color: black,
                    size: 12,
                  ),
                  Text(
                    widget.amt,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.date,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
