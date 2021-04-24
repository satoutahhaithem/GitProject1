import 'package:attendance_app/Screens/Camera_Screen.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/Wigdet.dart';
import 'package:attendance_app/const.dart';

class HomeScreen extends StatefulWidget {
  static final String id = '/HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffd9d9d9),
      appBar: AppBar(
        backgroundColor: kBlueColor,
      ),
      drawer: Drawer(
        child: StudentDrawer(),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: height / 13,
          ),
          myCard(
            height: height / 10,
            title: 'Previous :',
            lesson: 'Analyse 03',
            isVisible: true,
          ),
          SizedBox(
            height: height / 40,
          ),
          CurrentWidget(
            height: height / 6,
            lesson: 'POO',
            semestre: 'S2',
            laDate: '11h à 12h30',
          ),
          SizedBox(
            height: height / 35,
          ),
          myCard(
            height: height / 10,
            title: 'Next  :',
            lesson: 'English',
            isVisible: false,
            specialForNextWidget: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: height / 9,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CameraScreen.id);
              },
              child: IconsWidget(
                icon: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.white,
                  size: height / 12,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height / 10,
          ),
          /*  Visibility(
            visible: false,
            child: IconsWidget(
              icon: Icon(
                Icons.group_rounded,
                color: Color(0xFFDBD1D1),
                size: 50,
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
