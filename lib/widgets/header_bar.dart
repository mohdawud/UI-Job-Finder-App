import 'package:flutter/material.dart';

class header_bar extends StatelessWidget {
  const header_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Welcome Back!',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              Text(
                'Moh Dawud 👋',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Container(
            child: Icon(
              Icons.notifications,
              color: Color.fromARGB(204, 11, 31, 2),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(8),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
