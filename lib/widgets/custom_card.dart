import 'package:fleetco_task/widgets/progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomCard extends StatefulWidget {

  final double height;

  const CustomCard({Key key, this.height}) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child: SizedBox(
        height: widget.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 4.0,
                percent: 0.8,
                center: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: 36,
                ),
                progressColor: Colors.green,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Order ID 12',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),),
              SizedBox(
                height: 10,
              ),
              Text('You are running on time',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  color: Colors.grey[600]
                ),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProgressWidget(
                      bgColor: Colors.blue[100],
                      progressColor: Colors.blue,
                      value: '1200km',
                      title: 'Total Dist.',
                      icon: FontAwesomeIcons.road,
                    ),
                    ProgressWidget(
                      bgColor: Colors.orange[100],
                      progressColor: Colors.orange,
                      value: '48:09:12',
                      title: 'Duration',
                      icon: FontAwesomeIcons.solidClock,
                    ),
                    ProgressWidget(
                      bgColor: Colors.red[100],
                      progressColor: Colors.red,
                      value: '69kmph',
                      title: 'Avg. Speed',
                      icon: FontAwesomeIcons.tachometerAlt,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: InkWell(
                  onTap: (){},
                  child: Text(
                    'View Details',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
