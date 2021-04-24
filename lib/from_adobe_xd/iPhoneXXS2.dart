import 'package:flutter/material.dart';

class iPhoneXXS2 extends StatelessWidget {
  iPhoneXXS2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff033e8c),
      body: Stack(
        children: <Widget>[
          Container(),
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(40.0, 482.0),
            child: Text(
              'CHECKING',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 55,
                color: const Color(0xffd9d9d9),
                letterSpacing: 4.90049991607666,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
