import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_q_lator/services/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAccentColor,
        title: const Text(
          'Menu',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_shopping_cart_rounded),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  const Text(
                    'Welcome User!',
                    style: kLogInSignTextStyle,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Search',
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 18),
                          suffixIcon: const Padding(
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.search),
                          ),
                          suffixIconColor: kAccentColor,
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      const Text(
                        "Nearby Restaurants",
                        style: kLogInSecondarySignTextStyle,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: entries.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              leading: FlutterLogo(size: 56.0),
                              title: Text('Two-line ListTile'),
                              subtitle: Text('Here is a second line'),
                              trailing: IconButton(
                                color: kPrimaryColor,
                                icon: Icon(Icons.arrow_forward_rounded),
                                onPressed: () {},
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        "Popular Dishes",
                        style: kLogInSignTextStyle,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        height: 200.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: entries.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 220.0,
                              width: 200.0,
                              child: Card(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "images/ikigai-udon-recipe-1.png",
                                      scale: 1.9,
                                    ),
                                    const Text(
                                      "Pasta",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
