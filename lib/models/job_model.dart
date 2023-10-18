import 'package:flutter/material.dart';

class JobModel {
  String job;
  String company;
  IconData companyIcon;
  int salary;
  String address;
  Color bannerColor;
  String description;
  String requirements;

  JobModel({
    required this.job,
    required this.company,
    required this.companyIcon,
    required this.salary,
    required this.address,
    required this.bannerColor,
    required this.description,
    required this.requirements,
  });
}
