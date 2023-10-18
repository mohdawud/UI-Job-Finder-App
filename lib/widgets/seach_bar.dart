import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class search_bar extends StatelessWidget {
  const search_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search a job or position',
                  border: InputBorder.none,
                  icon: Icon(Iconsax.search_normal),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.only(left: 20),
            ),
          ),
          SizedBox(width: 20),
          Container(
            child: Icon(
              Icons.tune,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(204, 11, 31, 2),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
