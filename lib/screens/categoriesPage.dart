import 'package:coba_project/models/job_model.dart';
import 'package:coba_project/screens/home_screen.dart';
import 'package:coba_project/screens/job_screen.dart';
import 'package:coba_project/widgets/categories_list.dart';
import 'package:coba_project/widgets/header_bar.dart';
import 'package:coba_project/widgets/popular_job_card.dart';
import 'package:coba_project/widgets/seach_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _categoriesPageState();
}

class _categoriesPageState extends State<CategoriesPage> {
  final List<String> categories = [
    'Back-end Developer',
    'Front-end Developer',
    'UI Designer',
    'Product Manager',
  ];

  final List<JobModel> jobsList = [
    JobModel(
      job: 'Back-end Developer',
      company: 'Google',
      companyIcon: FontAwesomeIcons.google,
      salary: 160,
      address: 'California, USA',
      bannerColor: Color.fromARGB(204, 11, 31, 2),
      description: "sadasd",
      requirements: "asdas",
    ),
    JobModel(
      job: 'Back-end Developer',
      company: 'Dribbble',
      companyIcon: FontAwesomeIcons.dribbble,
      salary: 100,
      address: 'California, USA',
      bannerColor: Color.fromARGB(204, 14, 43, 2),
      description: "sadasd",
      requirements: "asdas",
    ),
    JobModel(
      job: 'Backend-end Developer',
      company: 'Shopify',
      companyIcon: FontAwesomeIcons.shopify,
      salary: 80,
      address: 'California, USA',
      bannerColor: Color.fromARGB(204, 14, 43, 2),
      description: "sadasd",
      requirements: "asdas",
    ),
  ];

  String selectedJob = '';

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        color: Colors.white,
        child: BottomNavigationBar(
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
            if (index == 0) {
              // Ganti dengan indeks item kategori yang benar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            }
          },
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(top: 50),
              color: Colors.white,
              child: Column(
                children: [
                  header_bar(),
                  SizedBox(height: 30),
                  search_bar(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              Container(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedJob = categories[index];
                        });
                      },
                      child: CategoryWidget(categories[index]),
                    );
                  },
                ),
              ), // Tampilkan kategori dengan ListView
            ]),
          ),
          SliverList.builder(
            itemCount:
                jobsList.where((element) => element.job == selectedJob).length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JobScreen(
                          job: jobsList
                              .where((element) => element.job == selectedJob)
                              .toList()[index]),
                    ));
              },
              child: PopularJobWidget(job: jobsList[index]),
            ),
          ),
        ],
      ),
    );
  }
}
