import 'package:fleetco_task/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final String image;
  final String title;
  final String subtitle;
  final String text1;
  final String text2;
  final String trailing;
  final Color color;
  final bool first;

  const ReusableCard({Key key, this.image, this.title, this.subtitle, this.trailing, this.color, this.first, this.text1, this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  image
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: first ? Row(
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 11
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        text2,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          fontSize: 13
                        ),
                      )
                    ],
                  )
                  : Text(subtitle,
                    style: TextStyle(
                      fontSize: 13
                  ),)
                )
              ],
            ),
            Spacer(),
            !first ? InkWell(
              child: Text(
                'Call',
                style: TextStyle(
                  color: Colors.green[800],
                  fontWeight: FontWeight.bold
                ),
              ),
            ): Container(),
          ],
        ),
      ),
    );
  }
}
