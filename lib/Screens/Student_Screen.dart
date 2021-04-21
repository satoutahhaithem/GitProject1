import 'package:attendance_app/Screens/Login_Screen.dart';
import 'package:flutter/material.dart';

class Student_Screen extends StatefulWidget {
  static final String id = '/StudenScreen';
  @override
  _Student_ScreenState createState() => _Student_ScreenState();
}

class _Student_ScreenState extends State<Student_Screen> {
  List<bool> isSelected = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff033e8c),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
            child: Padding(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.close,
                  color: Colors.white54,
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

class TextField extends StatelessWidget {
  TextField({this.hintText, this.labelText});
  String hintText;
  String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
