import 'package:flutter/material.dart';
import 'package:attendance_app/const.dart';
import 'package:attendance_app/Screens/Login_Screen.dart';

class myCard extends StatefulWidget {
  String allo;

  double height;
  String title, lesson;
  bool isVisible;
  double specialForNextWidget;
  myCard(
      {this.height,
      this.title,
      this.lesson,
      this.isVisible,
      this.specialForNextWidget});
  @override
  _myCardState createState() => _myCardState();
}

class _myCardState extends State<myCard> {
  bool _isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: myHeight, right: myHeight),
      child: Container(
        width: double.infinity,
        height: widget.height,
        child: Row(
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
            Container(
              width: widget.specialForNextWidget,
              child: Visibility(
                visible: widget.isVisible,
                child: Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.black45,
                    value: _isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        _isChecked = value;
                      });
                    }),
              ),
            )
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
  String semestre, laDate;
  CurrentWidget({this.height, this.lesson, this.semestre, this.laDate});
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
                  padding: EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    'Current :',
                    style: kTitleTextStyle,
                  ),
                ),
                Text(
                  lesson,
                  style: kCurrentCardLessonTextStyle,
                ),
                Container(
                  width: 60,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Text(
                  semestre,
                  style: kCurrentCardSemestreDateTextStyle,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 60),
                  child: Text(
                    laDate,
                    style: kCurrentCardSemestreDateTextStyle,
                  ),
                ),
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

class StudentDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    child: Icon(
                      Icons.account_circle,
                      size: 180,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      '    Satoutah Haithem\n '
                      's.haithem@esi-sba.dz ',
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
                    subTitle: '2CPI\n________________',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListeTitle(
                    title: 'Section :',
                    subTitle: 'A\n________________',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListeTitle(
                    title: 'Groupe :',
                    subTitle: '03\n________________',
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
                            Navigator.pushNamed(context, LoginScreen.id);
                          },
                          child: Text(
                            "Log Out",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
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
