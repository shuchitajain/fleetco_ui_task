import 'package:fleetco_task/constants.dart';
import 'package:fleetco_task/widgets/custom_card.dart';
import 'package:fleetco_task/widgets/reusable_card.dart';
import 'package:fleetco_task/widgets/step_progress.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TripScreen extends StatefulWidget {
  TripScreen({Key key}) : super(key: key);

  @override
  _TripScreenState createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  colour(int index) {
    switch (index) {
      case 0:
        return Colors.orange[200];
      case 1:
        return Colors.redAccent;
      case 2:
        return Colors.blue;
      case 3:
        return Colors.green;
      case 4:
        return Colors.purpleAccent;
      case 5:
        return Colors.grey;
    }
  }

  title(int index) {
    switch (index) {
      case 0:
        return 'Hotel charges';
      case 1:
        return 'Compliance';
      case 2:
        return 'Subscription charges';
      case 3:
        return 'Penalty';
      case 4:
        return 'Maintenance';
      case 5:
        return 'Others';
    }
  }

  val(int index) {
    switch (index) {
      case 0:
        return 06;
      case 1:
        return 08;
      case 2:
        return 01;
      case 3:
        return 38;
      case 4:
        return 64;
      case 5:
        return 04;
    }
  }

  amount(int index) {
    switch (index) {
      case 0:
        return '98,000';
      case 1:
        return '18,000';
      case 2:
        return '48,000';
      case 3:
        return '10,000';
      case 4:
        return '16,00,008';
      case 5:
        return '16,000';
    }
  }

  invoice(int index) {
    switch (index) {
      case 0:
        return 10;
      case 1:
        return 0.4;
      case 2:
        return 05;
      case 3:
        return 0.5;
      case 4:
        return 30;
      case 5:
        return 01;
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverPersistentHeader(
              delegate: MySliverAppBar(
                  expandedHeight: MediaQuery.of(context).size.height / 2),
              pinned: true,
            ),
          ];
        },
        body: ListView(
          padding: EdgeInsets.fromLTRB(0, height / 4, 0, 10),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Live Tracking',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.network(
              'https://staticmapmaker.com/img/google@2x.png',
              height: 280,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 140,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'KA 01J 1133',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        CircleAvatar(
                          radius: 12,
                          backgroundImage: NetworkImage(
                              'https://cdnph.upi.com/svc/sv/upi_com/6081460041737/2016/1/02d351fe8b445720cf8b1120e2fa90b8/Hotline-connects-foreigners-to-random-Swedes.jpg'),
                        ),
                        Text(
                          'Ambarao Godbole',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'From',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                  color: Colors.grey[600]),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 100,
                              child: Text(
                                'Sharma Transports Bengaluru',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'To',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                  color: Colors.grey[600]),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 130,
                              child: Text(
                                'The Exports Company Mumbai',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Expense Breakdown',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            StepProgress(),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (_, __) => SizedBox(
                height: 10,
              ),
              itemCount: 6,
              itemBuilder: (_, index) {
                return Container(
                  height: 78,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 38,
                          decoration: BoxDecoration(
                              color: colour(index),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        title: Text(
                          title(index),
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '${val(index)} Transactions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[500],
                              fontSize: 12),
                        ),
                        trailing: Container(
                          width: 100,
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.rupeeSign,
                                    color: black,
                                    size: 13,
                                  ),
                                  Text(
                                    amount(index),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${invoice(index)}% of invoice',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  color: Colors.grey[500]
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60, right: 20),
                        child: LinearPercentIndicator(
                          lineHeight: 5,
                          percent: 0.5,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          backgroundColor: Colors.grey[300],
                          progressColor: colour(index),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Vehicle Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            ReusableCard(
              image: 'https://etimg.etb2bimg.com/photo/69887195.cms',
              color: Colors.pink[100],
              title: 'KA 02 M 2021',
              first: true,
              text1: 'Total Km',
              text2: '45,452',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Driver Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            ReusableCard(
              color: Colors.green[100],
              title: 'Sharan Kumar',
              first: false,
              subtitle: '+91 9740291749',
              image: 'https://cdnph.upi.com/svc/sv/upi_com/6081460041737/2016/1/02d351fe8b445720cf8b1120e2fa90b8/Hotline-connects-foreigners-to-random-Swedes.jpg',
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Container(
          color: themeColor,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Trip ID 2022",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Positioned(
          top: expandedHeight / 4.1 - shrinkOffset,
          left: 0,
          right: 0,
          child: Opacity(
              opacity: (1 - shrinkOffset / expandedHeight),
              child: GFCarousel(
                  height: expandedHeight * 1.2,
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  enableInfiniteScroll: false,
                  items: List.generate(3, (index) {
                    return CustomCard(
                      height: expandedHeight * 1.2,
                    );
                  }))),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight * 1.3;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
