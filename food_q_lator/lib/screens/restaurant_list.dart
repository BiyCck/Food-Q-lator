
import 'dart:async';


import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

class Restaurant {
  final String id;
  final String name, city, cuisineStyle, ranking, rating, priceRange, numberReviews, reviews, urlTA, idTA;

  Restaurant({
    required this.id,
    required this.name,
    required this.city,
    required this.cuisineStyle,
    required this.ranking,
    required this.rating,
    required this.priceRange,
    required this.numberReviews,
    required this.reviews,
    required this.urlTA,
    required this.idTA
  });

  factory Restaurant.fromJson(Map<String, dynamic> jsonData) {
    return Restaurant(
      id: jsonData['id'],
      name: jsonData['name'],
      city: jsonData['location'],
      cuisineStyle: jsonData['cuisineStyle'],
      ranking: jsonData['ranking'],
      rating: jsonData['rating'],
      priceRange: jsonData['priceRange'],
      numberReviews: jsonData['numberReviews'],
      reviews: jsonData['reviews'],
      urlTA: jsonData['urlTA'],
      idTA: jsonData['idTA'],
    );
  }


}


class CustomListView extends StatelessWidget {
  final List<Restaurant> restaurants;

  CustomListView(this.restaurants);

  Widget build(context) {
    return ListView.builder(
      itemCount: restaurants.length,
      itemBuilder: (context, int currentIndex) {
        return createViewItem(restaurants[currentIndex], context);
      },
    );
  }

  Widget createViewItem(Restaurant restaurant, BuildContext context) {
    return ListTile(
      title: new Card(
        elevation: 5.0,
        child: new Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Padding(
                    child: Text(
                      restaurant.name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                    padding: EdgeInsets.all(1.0)),
                Text(" | "),
                Padding(
                    child: Text(
                      restaurant.city,
                      style: new TextStyle(fontStyle: FontStyle.italic),
                      textAlign: TextAlign.right,
                    ),
                    padding: EdgeInsets.all(1.0)),
              ],
              )
            ],
          ),

        ),

      ),
      onTap: () {
        var route = new MaterialPageRoute(
          builder: (BuildContext context) =>
          new SecondScreen(value: restaurant),
        );
        Navigator.of(context).push(route);
      },
    );
  }

}

Future<List<Restaurant>> downloadJSON() async {
  final jsonEndpoint = "http://192.168.178.31/PHP/foodqlator";

  final response = await get(Uri.parse(jsonEndpoint));

  if (response.statusCode == 200) {
    List restaurants = json.decode(response.body);
    return restaurants.map((restaurant) => new Restaurant.fromJson(restaurant)).toList();
  } else
    throw Exception('We were not able to successfully download the json.data');
}

class SecondScreen extends StatefulWidget{
  final Restaurant value;

  SecondScreen({required this.value});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Detail Page'),),
      body: new Card(
        elevation: 5.0,
        child: new Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Padding(
                child: new Text(
                  'RESTAURANT DETAILS',
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),

                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Padding(
                        child: Text(
                          "NAME",
                          style: new TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                        padding: EdgeInsets.all(5.0)),
                    Text(" : "),
                    Padding(
                        child: Text(
                          '${widget.value.name}',
                          style: new TextStyle(fontStyle: FontStyle.italic),
                          textAlign: TextAlign.right,
                        ),
                        padding: EdgeInsets.all(5.0)),

                  ],),
                  Row(children: <Widget>[
                    Padding(
                      child: Text(
                        "Cuisine Style",
                        style: new TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      padding: EdgeInsets.all(20.0),
                    ),Text(" : "),
                    Padding(
                        child: Text(
                          '${widget.value.cuisineStyle}',
                          style: new TextStyle(fontStyle: FontStyle.italic),
                          textAlign: TextAlign.right,
                        ),
                        padding: EdgeInsets.all(5.0)),



                  ],),
                  Row(children: <Widget>[
                    Padding(
                      child: Text(
                        "Location",
                        style: new TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      padding: EdgeInsets.all(20.0),
                    ),Text(" : "),
                    Padding(
                        child: Text(
                          '${widget.value.city}',
                          style: new TextStyle(fontStyle: FontStyle.italic),
                          textAlign: TextAlign.right,
                        ),
                        padding: EdgeInsets.all(5.0)),



                  ],),
                  Row(children: <Widget>[
                    Padding(
                      child: Text(
                        "Price Range",
                        style: new TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      padding: EdgeInsets.all(20.0),
                    ),Text(" : "),
                    Padding(
                        child: Text(
                          '${widget.value.priceRange}',
                          style: new TextStyle(fontStyle: FontStyle.italic),
                          textAlign: TextAlign.right,
                        ),
                        padding: EdgeInsets.all(5.0)),



                  ],)
                ],


              ),

            ],


          ),
        ),
      ),
    );
  }
}
