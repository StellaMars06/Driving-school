import 'package:flutter/material.dart';
import 'package:flutter/main.dart';


class Schools extends StatelessWidget {
  const Schools ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15.0),
          Container(
            padding: const EdgeInsets.only(right: 15.0),
            width:200,
            height: 300,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                BuildCard('Item 1', 'Price 1', 'image1.jpg', false, false, context),
                BuildCard('Item 2', 'Price 2', 'image2.jpg', true, true, context),
                // Add more grid items here
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget BuildCard(String name, String price, String imgPath, bool added, bool isFavourite, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0), // Add the missing comma here
    child: InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            ),
          ],
        ),
        // Add your content here
      ),
    ),
  );
}
