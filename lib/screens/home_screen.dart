import 'package:fleetco_task/widgets/reminders_widget.dart';

import '../widgets/expense_widget.dart';
import '../widgets/money_widget.dart';
import '../widgets/order_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getflutter/components/badge/gf_badge.dart';
import 'package:getflutter/getflutter.dart';
import '../widgets/carousel_widget.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                floating: true,
                pinned: false,
                expandedHeight: 70,
                elevation: 0,
                backgroundColor: Colors.white,
                title: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Text(
                          'Good Morning,',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 15),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Kukuh Sanjaya',
                          style: TextStyle(
                              color: black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.3),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(top: 17),
                    child: Stack(
                      children: [
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.solidBell,
                            color: black,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                        Positioned(
                          bottom: 20,
                          left: 22,
                          child: GFBadge(
                            shape: GFBadgeShape.circle,
                            color: themeColor,
                            size: 25,
                            child: Text('6'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 15),
                    child: InkWell(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://cdnph.upi.com/svc/sv/upi_com/6081460041737/2016/1/02d351fe8b445720cf8b1120e2fa90b8/Hotline-connects-foreigners-to-random-Swedes.jpg'),
                      ),
                      onTap: () {},
                    ),
                  )
                ],
              ),
            ];
          },
          body: ListView(
            children: [
              Container(
                  width: double.infinity,
                  color: white,
                  child: CarouselWidget()),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mar 26, 2019',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(FontAwesomeIcons.caretDown)
                          ]),
                    ),
                    Container(
                      height: 30,
                      width: 1.5,
                      color: Colors.grey[300],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Apr 26, 2019',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(FontAwesomeIcons.caretDown)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MoneyWidget(
                      color: Colors.tealAccent[100],
                      title: 'Spending',
                      amount: '2450',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MoneyWidget(
                      color: Colors.grey[300],
                      title: 'Income',
                      amount: '6532',
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Orders',
                            style: TextStyle(
                                color: black,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                'See all',
                                style: TextStyle(
                                    color: themeColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    OrderWidget(
                      color: Colors.green,
                      leading: 'J',
                      title: 'Tirmuala Veg',
                      id: '1',
                      code: 'KA 01 M 2211',
                      amt: '508L',
                      date: 'Apr 26',
                    ),
                    OrderWidget(
                      color: Colors.redAccent[100],
                      leading: 'S',
                      title: 'Sambara Fast Food',
                      id: '2',
                      code: 'KA 23 M 2401',
                      amt: '232L',
                      date: 'Apr 26',
                    ),
                    OrderWidget(
                      color: Colors.purpleAccent,
                      leading: 'P',
                      title: 'Polar Bear',
                      id: '3',
                      code: 'KA 01 M 4212',
                      amt: '122L',
                      date: 'Apr 26',
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  'Monthly Expense',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 15, bottom: 30),
                child: SizedBox(
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    children: [
                      ExpenseWidget(
                        color: Colors.blue,
                        icon: FontAwesomeIcons.water,
                        progressColor: Colors.orangeAccent,
                        title: 'Fuel',
                      ),
                      ExpenseWidget(
                        color: Colors.redAccent,
                        icon: FontAwesomeIcons.building,
                        progressColor: Colors.redAccent,
                        title: 'Government',
                      ),
                      Container(
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 40,
                color: themeColor,
                padding: EdgeInsets.only(left: 25, top: 20),
                child: Text(
                    'Reminders',
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                ),
              ),
              Container(
                height: 300,
                color: themeColor,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  children: [
                   RemindersWidget(
                     title: 'reminder4',
                   ),
                   RemindersWidget(
                     title: 'Reminder2',
                   ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
