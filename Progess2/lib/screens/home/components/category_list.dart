import 'package:flutter/material.dart';
import 'package:food_app/screens/menu/home-screen.dart';
import 'package:food_app/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Recommend",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Sushi",
            press: () {
              Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ),
            );},
          ),
          CategoryItem(
            title: "Sashimi",
            press: () {},
          ),
          CategoryItem(
            title: "Donburi",
            press: () {},
          ),
          CategoryItem(
            title: "Ramen",
            press: () {},
          ),
          CategoryItem(
            title: "Drinks",
            press: () {},
          ),
        ],
      ),
    );
  }
}
