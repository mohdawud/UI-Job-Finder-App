import 'package:coba_project/screens/categoriesPage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class bottom_navbar extends StatelessWidget {
  bottom_navbar({super.key});

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '1'),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: '1'),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: '1'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: '1'),
      ],
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.grey.shade400,
      selectedItemColor: Color.fromARGB(204, 11, 31, 2),
      currentIndex: selectedItem,
      iconSize: 30,
      backgroundColor: Colors.white,
      elevation: 0,
      onTap: (int index) {
        // Tanggapi interaksi pengguna di sini
        if (index == 1) {
          // Ganti dengan indeks item kategori yang benar
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategoriesPage()),
          );
        }
      },
    );
  }
}
