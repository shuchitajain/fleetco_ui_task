import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';

class CarouselWidget extends StatefulWidget {
  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {

  carouselColor(int count){
    switch(count){
      case 0: return themeColor;
      case 1: return Colors.deepOrangeAccent;
      case 2: return Colors.purple;
    }
  }
  
  subtitleColor(int count){
    switch(count){
      case 0: return Colors.blue;
      case 1: return Colors.yellow;
      case 2: return Colors.purple[100];
    }
  }

  circle1(int count){
    switch(count){
      case 0: return Colors.blue[800];
      case 1: return Colors.orange;
      case 2: return Colors.deepPurple;
    }
  }

  circle2(int count){
    switch(count){
      case 0: return Colors.blue[700];
      case 1: return Colors.orange[900];
      case 2: return Colors.purple[700];
    }
  }

  circle3(int count){
    switch(count){
      case 0: return Colors.blueAccent;
      case 1: return Colors.deepOrange[300];
      case 2: return Colors.purple[300];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GFCarousel(
        items: List.generate(3, (count) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: carouselColor(count),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Earnings',
                            style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.7,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Net Profits of March 2020',
                        style: TextStyle(
                            color: subtitleColor(count),
                            fontWeight: FontWeight.w200,
                            letterSpacing: 0.9,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.rupeeSign,
                            color: white,
                            size: 14,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '6,000',
                            style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 120,
                  right: 12,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundColor: circle1(count),
                  )
                ),
                Positioned(
                    left: 230,
                    top: 15,
                    child: CircleAvatar(
                      radius: 85,
                      backgroundColor: circle2(count),
                    )
                ),
                Positioned(
                  right: 20,
                  top: 28,
                  child: Container(
                    color: white,
                    width: 48,
                    height: 15,
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 40,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: circle3(count),
                  ),
                )
              ],
            ),
          );
        }),
        onPageChanged: (index) {
          setState(() {});
        },
        autoPlay: false,
        enlargeMainPage: true,
        pagination: true,
        pagerSize: 0.0,
        aspectRatio: 1.8,
        viewportFraction: 0.9,
      ),
    );
  }
}