import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressWidget extends StatefulWidget {
  final double height;
  final String value;
  final String title;
  final Color bgColor;
  final Color progressColor;
  final IconData icon;

  const ProgressWidget(
      {Key key,
      this.height,
      this.value,
      this.title,
      this.bgColor,
      this.progressColor,
      this.icon})
      : super(key: key);

  @override
  _ProgressWidgetState createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 3.0,
            percent: 0.8,
            center: CircleAvatar(
              backgroundColor: widget.bgColor,
              radius: 18,
              child: Center(
                  child: Icon(
                widget.icon,
                size: 20,
                color: widget.progressColor,
              )),
            ),
            progressColor: widget.progressColor,
          ),
        ),
        Text(
          widget.value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          widget.title,
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 12, color: Colors.grey[700]),
        ),
      ],
    );
  }
}
