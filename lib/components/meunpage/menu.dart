// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jongnham_clone/components/meunpage/detailscreen.dart';
import 'package:jongnham_clone/components/meunpage/testscreen.dart';

class CustomList extends StatelessWidget {
  const CustomList(
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
    return InkWell(
      onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
                  builder: (context) => DetailScreen(image: image,title: title, rateStar: rateStar, viewCount: viewCount, rate: rate, review: review, foodType: foodType, location: location,),
          ),
        );
      },
      child: Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              image,
              width: 400,
              height: 90,
              fit: BoxFit.cover,
            ),
            flex: 1,
          ),
          Expanded(
              child: _menuDescription(
                title: title,
                rateStar: rateStar,
                viewCount: viewCount,
                rate: rate,
                review: review,
                foodType: foodType,
                location: location,
              ),
              flex: 3),
        ],
      ),
    ),
    );
    
    
  }
}

class _menuDescription extends StatelessWidget {
  const _menuDescription(
      {Key? key,
      required this.title,
      required this.rateStar,
      required this.viewCount,
      required this.rate,
      required this.review,
      required this.foodType,
      required this.location})
      : super(key: key);
  final String title;
  final double rateStar;
  final int viewCount;
  final int rate;
  final int review;
  final String foodType;
  final String location;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              )),
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
              SizedBox(
                height: 13.0,
                child: VerticalDivider(
                  color: Colors.grey,
                ),
              ),
              Text('$viewCount views', style: TextStyle(color: Colors.grey))
            ],
          ),
          Row(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Text('Open Now',
                  style: TextStyle(
                    color: Colors.green,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

final List customList = [
  CustomList(
      image:
          'https://images.pexels.com/photos/1893557/pexels-photo-1893557.jpeg?cs=srgb&dl=pexels-valeria-boltneva-1893557.jpg&fm=jpg',
      title: 'KFC Cambodia',
      rateStar: 2.2,
      viewCount: 100,
      rate: 14,
      review: 12,
      foodType: 'Khmer',
      location: 'Phone Penh'),
  CustomList(
      image:
          'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      title: 'Brown Coffee',
      rateStar: 5,
      viewCount: 100,
      rate: 14,
      review: 12,
      foodType: 'Khmer',
      location: 'Phone Penh'),
  CustomList(
      image:
          'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_1100,c_fill,g_auto,h_619,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F200526153607-starbucks-coffee.jpg',
      title: 'Starbuck Coffee',
      rateStar: 4.2,
      viewCount: 100,
      rate: 14,
      review: 12,
      foodType: 'Khmer',
      location: 'Phone Penh'),
  CustomList(
      image:
          'https://images.pexels.com/photos/1893557/pexels-photo-1893557.jpeg?cs=srgb&dl=pexels-valeria-boltneva-1893557.jpg&fm=jpg',
      title: 'KFC Cambodia',
      rateStar: 3.2,
      viewCount: 100,
      rate: 14,
      review: 12,
      foodType: 'Khmer',
      location: 'Phone Penh'),
];

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: ScrollPhysics(),
        child: ListView.builder(
          itemCount: customList.length,
          padding: EdgeInsets.all(8.0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return customList[index];
          },
        ));
  }
}
