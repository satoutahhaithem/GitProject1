import 'package:attendance_app/Screens/Home_Screen.dart';
import 'package:attendance_app/Screens/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_screen/flutter_responsive_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<Offset>(begin: Offset(-4, 0), end: Offset(0, 0))
        .animate(_animationController);

    _animationController.forward().whenComplete(() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final Function hp = Screen(MediaQuery.of(context).size).hp;

    return Scaffold(
        body: Hero(
      tag: 'logoTag',
      child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/attendance_original.jpg"),
            fit: BoxFit.fitHeight,
          ))),
    ));
  }
}
