import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryWidget extends StatelessWidget {
  var categori;

  CategoryWidget(this.categori);

  @override
  Widget build(BuildContext context) {
    return buildCategoryCard(this.categori);
  }

  Widget buildCategoryCard(String categoryName) {
    return Padding(
      padding: EdgeInsets.all(13.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(204, 11, 31, 2),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            categoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
