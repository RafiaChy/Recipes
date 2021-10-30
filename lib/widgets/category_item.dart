import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recepies_for_me/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String iD;
  final String title;
  final Color color;
  CategoryItem({required this.iD, required this.title, required this.color});

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      // MaterialPageRoute(
      //   builder: (_) {
      //     return CategoryMealsScreen(categoryID: iD, categoryTitle: title);
      //   },
      CategoryMealsScreen.routeName,
      arguments: {
        'id': iD,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () => selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.withOpacity(0.7),
            color,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
