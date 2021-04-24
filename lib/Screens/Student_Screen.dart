import 'package:flutter/material.dart';
import 'package:attendance_app/Wigdet.dart';

class Student_Screen extends StatefulWidget {
  static final String id = '/StudenScreen';
  @override
  _Student_ScreenState createState() => _Student_ScreenState();
}

class _Student_ScreenState extends State<Student_Screen> {
  List<bool> isSelected = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return StudentDrawer();
  }
}
