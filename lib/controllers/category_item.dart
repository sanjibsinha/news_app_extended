import 'package:flutter/material.dart';
import '../views/category_news_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({
    required this.id,
    required this.title,
    required this.color,
  });

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryNewsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        /* decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ), */
        alignment: Alignment.center,
//color: Colors.blue,
// we can adjust width and height
// to do that we need to commented out the constraints
        width: 350.00,
        height: 350.00,
// to skew the container
        transform: Matrix4.rotationZ(0.1),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.red,
            width: 2.0,
            style: BorderStyle.solid,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(40.0)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 20.0,
              spreadRadius: 20.0,
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.red,
              Colors.white,
            ],
          ),
        ),
      ),
    );
  }
}
