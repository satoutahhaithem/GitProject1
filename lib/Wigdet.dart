import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:attendance_app/const.dart';
import 'package:attendance_app/Screens/Login_Screen.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'Screens/Login/google_sign_in_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class myCard extends StatefulWidget {
  String allo;

  double height;
  String title, lesson;
  bool isVisible;
  String lessonType;
  double specialForNextWidget;
  String starting;
  String ending;
  String professor;
  myCard(
      {this.height,
      this.title,
      this.lesson,
      this.isVisible,
      this.specialForNextWidget,
      this.lessonType,
      this.starting,
      this.ending,
      this.professor});
  @override
  _myCardState createState() => _myCardState();
}

class _myCardState extends State<myCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: myHeight, right: myHeight),
      child: Container(
        width: double.infinity,
        height: widget.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    widget.title,
                    style: kTitleTextStyle,
                  ),
                ),
                Text(
                  widget.lesson,
                  style: kLessonTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    '${widget.lessonType}',
                    style: kLessonTextStyle,
                  ),
                ),
                // Container(
                //   width: widget.specialForNextWidget,
                //   child: Visibility(
                //     visible: widget.isVisible,
                //     child: Checkbox(
                //         checkColor: Colors.white,
                //         activeColor: Colors.black45,
                //         value: widget.isChecked,
                //         onChanged: (bool value) {
                //           setState(() {
                //             _isChecked = value;
                //           });
                //         }),
                //   ),
                // )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '${widget.professor}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${widget.starting} To ${widget.ending}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        decoration: kCardBoxDecoration,
      ),
    );
  }
}

class CurrentWidget extends StatelessWidget {
  double height;
  String lesson;
  String startingCurrent;
  String endingCurrent;
  String professor;
  String lessonType;
  CurrentWidget(
      {this.height,
      this.lesson,
      this.startingCurrent,
      this.endingCurrent,
      this.professor,
      this.lessonType});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: myHeight,
        right: myHeight,
      ),
      child: Container(
        width: double.infinity,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Current :',
                    style: kTitleTextStyle,
                  ),
                ),
                Text(
                  lesson,
                  style: kLessonTextStyle,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    lessonType,
                    style: kLessonTextStyle,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    '$professor',
                    style: kProfAndTimeCurrentTextStyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Text(
                    '${startingCurrent} To ${endingCurrent}',
                    style: kProfAndTimeCurrentTextStyle,
                  ),
                )
              ],
            ),
          ],
        ),
        decoration: kCurrentCardBoxDecoration,
      ),
    );
  }
}

//StudentWidget
class ListeTitle extends StatelessWidget {
  String title;
  String subTitle;
  ListeTitle({this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
      isThreeLine: true,
      subtitle: Text(
        subTitle,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      leading: Icon(
        Icons.label,
        size: 40,
        color: Colors.grey,
      ),
    );
  }
}

class StudentDrawer extends StatefulWidget {
  final String studentInfo;
  final String photoUrl;

  const StudentDrawer({Key key, this.studentInfo, this.photoUrl})
      : super(key: key);
  @override
  _StudentDrawerState createState() => _StudentDrawerState();
}

class _StudentDrawerState extends State<StudentDrawer> {
  @override
  Widget build(BuildContext context) {
    print(widget.studentInfo);
    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
    Map<String, dynamic> studentInf = jsonDecode(widget.studentInfo);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBlueColor,
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.height * 0.1,
                        backgroundImage: NetworkImage(
                          widget.photoUrl != null
                              ? widget.photoUrl
                              : 'https://image.flaticon.com/icons/png/128/1077/1077114.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      ' ${provider.googleSignInAccount.displayName}\n '
                      '${provider.googleSignInAccount.email} ',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 20,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListeTitle(
                    title: 'level :',
                    subTitle: '${studentInf["level"]}\n________________',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListeTitle(
                    title: 'Section :',
                    subTitle: '${studentInf["section"]}\n________________',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListeTitle(
                    title: 'Groupe :',
                    subTitle: '${studentInf["group"]}\n________________',
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Center(
                      child: Container(
                        width: 126,
                        height: 49,
                        // ignore: deprecated_member_use
                        child: OutlineButton(
                          borderSide: BorderSide(color: Colors.white),
                          onPressed: () {
                            final provider = Provider.of<GoogleSignInProvider>(
                                context,
                                listen: false);
                            provider.logout();
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (_) => LoginScr()));
                          },
                          child: Text(
                            "Log Out",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconsWidget extends StatelessWidget {
  Widget icon;
  IconsWidget({this.icon});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: height / 7,
      height: height / 7,
      child: icon,
      decoration: kCircleBoxDecoration,
    );
  }
}
