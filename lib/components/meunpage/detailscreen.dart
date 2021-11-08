// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: 'Zeroth'),
  Tab(text: 'First'),
  Tab(text: 'Second'),
];

class StoreDetail extends StatefulWidget {
  const StoreDetail({Key? key}) : super(key: key);

  @override
  _StoreDetailState createState() => _StoreDetailState();
}

class _StoreDetailState extends State<StoreDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 3.0),
            child: Row(
              children: [
                Icon(
                  Icons.timelapse,
                  color: Colors.red,
                ),
                VerticalDivider(),
                Text('Hours Today: 7:00-9:00 PM',
                    style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 3.0),
            child: Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.red,
                ),
                VerticalDivider(),
                Text('012 45 64 21', style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 3.0),
            child: Row(
              children: [
                Icon(
                  Icons.attach_money,
                  color: Colors.red,
                ),
                VerticalDivider(),
                Text('\$4.00 - \$6.00', style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 3.0),
            child: Row(
              children: [
                Icon(
                  Icons.food_bank,
                  color: Colors.red,
                ),
                VerticalDivider(),
                Text('Food', style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 3.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
                VerticalDivider(),
                Text('#1D Beoung Tumpoun Phnom Penh',
                    style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomerTab extends StatefulWidget {
  const CustomerTab({Key? key}) : super(key: key);

  @override
  _CustomerTabState createState() => _CustomerTabState();
}

class _CustomerTabState extends State<CustomerTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.red,
              indicatorColor: Colors.red,
              tabs: [
                Tab(
                  icon: Icon(Icons.store, size: 30),
                  height: 80,
                ),
                Tab(
                  icon: Icon(Icons.coffee, size: 30),
                  height: 80,
                ),
                Tab(
                  icon: Icon(Icons.calendar_today, size: 30),
                  height: 80,
                ),
                Tab(
                  icon: Icon(Icons.chat, size: 30),
                  height: 80,
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                physics: ScrollPhysics(),
                children: [
                  StoreDetail(),
                  Text('Coffee'),
                  Text('Calendar'),
                  Text('Chat')
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {Key? key,
      required this.image,
      required this.title,
      required this.rateStar,
      required this.viewCount,
      required this.rate,
      required this.review,
      required this.foodType,
      required this.location})
      : super(key: key);

  final String image;
  final String title;
  final double rateStar;
  final int viewCount;
  final int rate;
  final int review;
  final String foodType;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.favorite_border),
            VerticalDivider(),
            Icon(Icons.edit),
            VerticalDivider(),
            Icon(Icons.share),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              image,
              width: MediaQuery.of(context).size.width,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      RatingBar.builder(
                          initialRating: rateStar,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 25.0,
                          itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          }),
                      Text('$rateStar'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              '$rate rating',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 13.0,
                              child: VerticalDivider(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '$review Reviews',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Text('Open Now',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.food_bank,
                        color: Colors.grey,
                      ),
                      Text(
                        foodType,
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 13.0,
                        child: VerticalDivider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                      ),
                      Text(
                        location,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    height: 500,
                    child: CustomerTab(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            color: Colors.black,
            child: Center(
              
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.phone, color: Colors.white), Text('Call Now', style: TextStyle(color: Colors.white),)],),)
          ),
           Container(
            width: MediaQuery.of(context).size.width / 2,
            color: Colors.white,
            child: Center(
              
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.location_on, color: Colors.red), Text('Map', style: TextStyle(color: Colors.red),)],),)
          ),
        ],),
      ),
    );
  }
}
