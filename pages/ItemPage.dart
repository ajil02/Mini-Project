import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/AppBarWidget.dart';
import 'package:flutter_application_1/Widgets/DrawerWidget.dart';
import 'package:flutter_application_1/Widgets/Square.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

final List<String> food = [
  'Biriyani',
  'Drinks',
  'Meals',
  'Curry',
  'food 1',
  'food 2',
  'food 3',
  'food 4',
];
final List<String> name = [
  'images/biriyani.jpg',
  'images/drinks.jpg',
  'images/meals.jpg',
  'images/vegc.jpg',
  'images/biriyani.jpg',
  'images/drinks.jpg',
  'images/meals.jpg',
  'images/vegc.jpg',
];

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(), // Custom app bar
          Container(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    25), // Adjust the border radius as needed
                color: Colors.white.withOpacity(0.1),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 250,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "What would you like to have?",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: food.length,
              itemBuilder: (context, index) {
                return Square(
                  foodtile: food[index],
                  fimage: name[index],
                );
              },
            ),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "cartPage");
          },
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
