

import 'package:flutter/material.dart';
import 'package:food_q_lator/screens/restaurantList.dart';

class RestaurantScreen extends StatefulWidget{
  final Restaurant value;

  RestaurantScreen({required this.value});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
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