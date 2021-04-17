import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class iPhoneXXS1 extends StatelessWidget {
  final VoidCallback Groupes;
  final VoidCallback QrCode;
  iPhoneXXS1({
    Key key,
    this.Groupes,
    this.QrCode,
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
          Container(),
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(147.0, 175.0),
            child: Text(
              'Analyze 3',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 19,
                color: const Color(0xff4b7ba6),
                letterSpacing: 1.6928999710083006,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(148.0, 251.0),
            child: Text(
              'POO',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 41,
                color: const Color(0xff4b7ba6),
                letterSpacing: 3.6530999374389648,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(153.0, 406.0),
            child: Text(
              'Anglais ',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: const Color(0xff4b7ba6),
                letterSpacing: 1.7819999694824218,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 178.0),
            child: Text(
              'Previous:',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: const Color(0xff4b7ba6),
                letterSpacing: 1.2473999786376953,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 295.0),
            child: Text(
              'Current:',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: const Color(0xff4b7ba6),
                letterSpacing: 1.2473999786376953,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(18.0, 410.0),
            child: Text(
              'Next:',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: const Color(0xff4b7ba6),
                letterSpacing: 1.2473999786376953,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(),
          Transform.translate(
            offset: Offset(100.0, 329.0),
            child: Text(
              'S2             11h à12h30',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: const Color(0xff4b7ba6),
                letterSpacing: 1.6037999725341796,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(142.0, 673.0),
            child: GestureDetector(
              onTap: () => Groupes?.call(),
              child: SizedBox(
                width: 91.0,
                height: 70.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 90.6, 70.4),
                      size: Size(90.6, 70.4),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(20.2, 38.7, 50.3, 31.7),
                            size: Size(90.6, 70.4),
                            pinLeft: true,
                            pinRight: true,
                            pinBottom: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_p8ynzf,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(32.5, 10.4, 25.8, 31.5),
                            size: Size(90.6, 70.4),
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_emo6kk,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(10.8, 0.1, 25.4, 31.5),
                            size: Size(90.6, 70.4),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_ej7lod,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(54.3, 0.0, 25.5, 31.6),
                            size: Size(90.6, 70.4),
                            pinRight: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_tgwvas,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 30.3, 34.2, 28.7),
                            size: Size(90.6, 70.4),
                            pinLeft: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_qa5yqj,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(56.4, 30.4, 34.2, 28.6),
                            size: Size(90.6, 70.4),
                            pinRight: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_ct2opx,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 90.6, 70.4),
                            size: Size(90.6, 70.4),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(152.0, 522.0),
            child: GestureDetector(
              onTap: () => QrCode?.call(),
              child: SizedBox(
                width: 71.0,
                height: 71.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 71.2, 71.5),
                      size: Size(71.2, 71.5),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(28.9, 8.2, 18.2, 32.0),
                            size: Size(71.2, 71.5),
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_dhp1zj,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(7.8, 8.2, 18.2, 18.3),
                            size: Size(71.2, 71.5),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_tj7wqu,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(44.8, 8.2, 18.2, 18.3),
                            size: Size(71.2, 71.5),
                            pinRight: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_ukd0wr,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(7.8, 45.4, 18.2, 18.1),
                            size: Size(71.2, 71.5),
                            pinLeft: true,
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_fq4viy,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(37.0, 42.5, 23.6, 18.5),
                            size: Size(71.2, 71.5),
                            pinRight: true,
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_bglxjc,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(46.7, 29.5, 16.3, 13.0),
                            size: Size(71.2, 71.5),
                            pinRight: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_ip1wap,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 56.9, 14.4, 14.5),
                            size: Size(71.2, 71.5),
                            pinLeft: true,
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_t5lrw4,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(56.8, 56.9, 14.4, 14.6),
                            size: Size(71.2, 71.5),
                            pinRight: true,
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_thsmmt,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 14.6, 14.4),
                            size: Size(71.2, 71.5),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_4ehzwq,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(56.8, 0.0, 14.4, 14.4),
                            size: Size(71.2, 71.5),
                            pinRight: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_dtvyum,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(13.2, 34.3, 15.9, 8.1),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_idfbob,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(29.0, 50.5, 10.5, 10.5),
                            size: Size(71.2, 71.5),
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_klazud,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(29.0, 39.9, 7.7, 10.4),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_vddv0l,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(20.1, 29.4, 8.9, 2.4),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_9akjjw,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(13.1, 29.4, 3.8, 5.1),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_9zto1,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(55.2, 47.8, 5.3, 2.4),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_ylyj0n,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(42.3, 58.3, 2.4, 5.3),
                            size: Size(71.2, 71.5),
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_uyf5y2,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(7.9, 37.3, 2.3, 5.1),
                            size: Size(71.2, 71.5),
                            pinLeft: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Container(
                              color: const Color(0xff1e4c75),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(39.4, 40.0, 5.3, 2.5),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_c7qlnb,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(52.9, 42.4, 2.4, 5.5),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_h1ynul,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(29.0, 61.3, 5.0, 2.2),
                            size: Size(71.2, 71.5),
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Container(
                              color: const Color(0xff1e4c75),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(60.6, 39.9, 2.3, 5.1),
                            size: Size(71.2, 71.5),
                            pinRight: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_4ldv,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(56.7, 61.3, 2.4, 2.3),
                            size: Size(71.2, 71.5),
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Container(
                              color: const Color(0xff1e4c75),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(23.5, 34.6, 2.6, 2.8),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_66e0se,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(34.1, 24.2, 2.4, 2.5),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_lqus2r,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(60.5, 34.8, 2.5, 2.3),
                            size: Size(71.2, 71.5),
                            pinRight: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_5o3xrq,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(39.5, 56.0, 2.3, 2.2),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Container(
                              color: const Color(0xff1e4c75),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(7.9, 29.4, 2.2, 2.5),
                            size: Size(71.2, 71.5),
                            pinLeft: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_qfmo95,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(60.4, 50.7, 2.6, 2.3),
                            size: Size(71.2, 71.5),
                            pinRight: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_71yyx2,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(52.9, 58.5, 2.3, 2.3),
                            size: Size(71.2, 71.5),
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Container(
                              color: const Color(0xff1e4c75),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(44.7, 42.4, 2.5, 2.4),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_k807k5,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(50.1, 61.3, 2.4, 2.3),
                            size: Size(71.2, 71.5),
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Container(
                              color: const Color(0xff1e4c75),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(60.7, 61.3, 2.3, 2.3),
                            size: Size(71.2, 71.5),
                            pinRight: true,
                            pinBottom: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Container(
                              color: const Color(0xff1e4c75),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(13.2, 13.4, 7.6, 7.7),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Container(
                              color: const Color(0xff1e4c75),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(50.1, 13.5, 7.6, 7.7),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Container(
                              color: const Color(0xff1e4c75),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(13.1, 50.7, 7.6, 7.6),
                            size: Size(71.2, 71.5),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Container(
                              color: const Color(0xff1e4c75),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 71.2, 71.5),
                            size: Size(71.2, 71.5),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_p8ynzf =
    '<svg viewBox="20.2 38.7 50.3 31.7" ><path  d="M 34.17699813842773 38.70800018310547 C 39.9640007019043 46.49900054931641 51.61700057983398 45.73799896240234 56.51300048828125 38.65299987792969 C 58.90999984741211 39.60200119018555 61.38700103759766 40.42100143432617 63.71799850463867 41.54399871826172 C 66.44999694824219 42.86100006103516 67.71199798583984 45.42800140380859 68.47299957275391 48.20600128173828 C 69.58399963378906 52.26499938964844 70.21299743652344 56.4119987487793 70.44300079345703 60.61600112915039 C 70.48500061035156 61.37599945068359 70.552001953125 62.13999938964844 70.51100158691406 62.89599990844727 C 70.41699981689453 64.61799621582031 69.42900085449219 65.64399719238281 67.86399841308594 66.25599670410156 C 64.27799987792969 67.65799713134766 60.5620002746582 68.60099792480469 56.77899932861328 69.19499969482422 C 53.2760009765625 69.74600219726563 49.73699951171875 70.23899841308594 46.20000076293945 70.35199737548828 C 43.16600036621094 70.447998046875 40.09099960327148 70.12899780273438 37.07400131225586 69.70200347900391 C 33.89400100708008 69.25299835205078 30.74600028991699 68.52100372314453 27.61400032043457 67.78800201416016 C 25.96699905395508 67.40299987792969 24.36400032043457 66.80300140380859 22.77300071716309 66.21600341796875 C 21.01799964904785 65.56800079345703 20.02099990844727 64.27400207519531 20.19599914550781 62.37099838256836 C 20.5049991607666 59.01100158691406 20.83499908447266 55.64699935913086 21.3430004119873 52.3129997253418 C 21.63599967956543 50.38999938964844 22.19099998474121 48.48600006103516 22.81399917602539 46.63700103759766 C 23.83200073242188 43.61100006103516 25.95299911499023 41.63999938964844 28.99399948120117 40.62300109863281 C 30.73399925231934 40.04199981689453 32.43899917602539 39.35400009155273 34.17699813842773 38.70800018310547" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_emo6kk =
    '<svg viewBox="32.5 10.4 25.8 31.5" ><path  d="M 32.54899978637695 23.42499923706055 C 32.66299819946289 21.05599975585938 32.96200180053711 18.74099922180176 34.04700088500977 16.59499931335449 C 35.73699951171875 13.25300025939941 38.52899932861328 11.36499977111816 42.12300109863281 10.68400001525879 C 44.73600006103516 10.1879997253418 47.3650016784668 10.23600006103516 49.96599960327148 10.97799968719482 C 54.54100036621094 12.2819995880127 57.26200103759766 15.39400005340576 57.99200057983398 19.93899917602539 C 59.00899887084961 26.26399993896484 57.81900024414063 32.28200149536133 54.0880012512207 37.5880012512207 C 51.9370002746582 40.64899826049805 48.80699920654297 42.02099990844727 45.0369987487793 41.87400054931641 C 39.72299957275391 41.66600036621094 36.68600082397461 38.4630012512207 34.73699951171875 33.94400024414063 C 33.29399871826172 30.60000038146973 32.72499847412109 27.04100036621094 32.54899978637695 23.42499923706055" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ej7lod =
    '<svg viewBox="10.8 0.1 25.4 31.5" ><path  d="M 24.14599990844727 31.60300064086914 C 18.29299926757813 31.51899909973145 15.10900020599365 28.44599914550781 13.07800006866455 23.83499908447266 C 11.59000015258789 20.4640007019043 10.89200019836426 16.88400077819824 10.84200000762939 13.23400020599365 C 10.79199981689453 9.335000038146973 11.77099990844727 5.717000007629395 14.84700012207031 2.992000102996826 C 16.56599998474121 1.468999981880188 18.62199974060059 0.6690000295639038 20.86499977111816 0.3140000104904175 C 23.87700080871582 -0.164000004529953 26.8439998626709 -0.009999999776482582 29.68099975585938 1.187999963760376 C 33.52999877929688 2.815000057220459 35.55799865722656 5.870999813079834 36.28499984741211 9.881999969482422 C 36.31900024414063 10.07100009918213 36.17399978637695 10.38300037384033 36.01100158691406 10.50300025939941 C 32.82300186157227 12.86999988555908 31.25 16.15299987792969 30.67200088500977 19.97400093078613 C 30.32299995422363 22.28899955749512 30.4689998626709 24.60400009155273 30.88199996948242 26.90299987792969 C 30.95499992370605 27.30599975585938 31.08399963378906 27.71199989318848 31.07399940490723 28.11400032043457 C 31.06599998474121 28.41900062561035 30.95899963378906 28.80400085449219 30.75200080871582 29.00900077819824 C 29.05599975585938 30.69099998474121 26.26499938964844 31.68400001525879 24.14599990844727 31.60300064086914" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tgwvas =
    '<svg viewBox="54.3 0.0 25.5 31.6" ><path  d="M 66.87400054931641 31.59700012207031 C 64.24600219726563 31.62100028991699 61.91400146484375 30.83699989318848 59.91600036621094 29.10000038146973 C 59.54399871826172 28.77700042724609 59.44400024414063 28.4680004119873 59.54899978637695 27.95299911499023 C 60.33300018310547 24.07200050354004 60.45899963378906 20.19599914550781 59.04899978637695 16.41699981689453 C 58.19200134277344 14.11999988555908 56.82699966430664 12.1540002822876 54.81100082397461 10.69900035858154 C 54.45399856567383 10.44099998474121 54.22900009155273 10.21100044250488 54.33399963378906 9.706000328063965 C 55.18500137329102 5.558000087738037 57.35300064086914 2.395999908447266 61.44100189208984 1.004999995231628 C 66.08999633789063 -0.5759999752044678 70.70500183105469 -0.4149999916553497 74.94400024414063 2.36299991607666 C 77.51699829101563 4.047999858856201 78.93399810791016 6.626999855041504 79.42400360107422 9.571999549865723 C 80.38999938964844 15.37800025939941 79.27100372314453 20.89100074768066 76.40599822998047 26.0049991607666 C 74.73100280761719 28.99399948120117 72.16100311279297 30.89800071716309 68.72299957275391 31.48200035095215 C 68.11699676513672 31.58499908447266 67.48999786376953 31.5620002746582 66.87400054931641 31.59700012207031" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qa5yqj =
    '<svg viewBox="0.0 30.3 34.2 28.7" ><path  d="M 31.95700073242188 31.96199989318848 C 32.69699859619141 33.61999893188477 33.39599990844727 35.18999862670898 34.18000030517578 36.94499969482422 C 32.80599975585938 37.49499893188477 31.37599945068359 38.05899810791016 29.95299911499023 38.63999938964844 C 28.57299995422363 39.20199966430664 27.13800048828125 39.66600036621094 25.8390007019043 40.37799835205078 C 23.25 41.79899978637695 21.72400093078613 44.16899871826172 20.95000076293945 46.91299819946289 C 20.16699981689453 49.69300079345703 19.69000053405762 52.5629997253418 19.13299942016602 55.40399932861328 C 18.90900039672852 56.54700088500977 18.82799911499023 57.71900177001953 18.66900062561035 58.98300170898438 C 17.58300018310547 58.85699844360352 16.51099967956543 58.77199935913086 15.45199966430664 58.60200119018555 C 10.82400035858154 57.85900115966797 6.23199987411499 56.95800018310547 1.835999965667725 55.27000045776367 C 0.4129999876022339 54.72299957275391 -0.07599999755620956 54.00199890136719 0.008999999612569809 52.51599884033203 C 0.2540000081062317 48.2599983215332 0.7580000162124634 44.02999877929688 1.815999984741211 39.90000152587891 C 2.203999996185303 38.38899993896484 2.898000001907349 36.93099975585938 3.628000020980835 35.54000091552734 C 4.574999809265137 33.73400115966797 6.369999885559082 32.97299957275391 8.175000190734863 32.2859992980957 C 9.812999725341797 31.66200065612793 11.46000003814697 31.05500030517578 13.07400035858154 30.3700008392334 C 13.61800003051758 30.13899993896484 13.81599998474121 30.45199966430664 14.09799957275391 30.73200035095215 C 16.27799987792969 32.89699935913086 18.89800071716309 34.18899917602539 21.94599914550781 34.52099990844727 C 25.56800079345703 34.91500091552734 28.94400024414063 34.20800018310547 31.95700073242188 31.96199989318848" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ct2opx =
    '<svg viewBox="56.4 30.4 34.2 28.6" ><path  d="M 72.05100250244141 58.92699813842773 C 71.56600189208984 56.03300094604492 71.11799621582031 53.20299911499023 70.60800170898438 50.38399887084961 C 70.1510009765625 47.86199951171875 69.39499664306641 45.43500137329102 67.93599700927734 43.2859992980957 C 66.27700042724609 40.84500122070313 63.79199981689453 39.67200088500977 61.09299850463867 38.77999877929688 C 59.49700164794922 38.25199890136719 57.95399856567383 37.56100082397461 56.43199920654297 36.95999908447266 C 57.22299957275391 35.20000076293945 57.92699813842773 33.63299942016602 58.56800079345703 32.20700073242188 C 60.22999954223633 32.88999938964844 61.85200119018555 33.82799911499023 63.59600067138672 34.21799850463867 C 68.41699981689453 35.29700088500977 72.80400085449219 34.31499862670898 76.44100189208984 30.79100036621094 C 76.91400146484375 30.33200073242188 77.27400207519531 30.23699951171875 77.88999938964844 30.51300048828125 C 79.19499969482422 31.09700012207031 80.51499938964844 31.69099998474121 81.88700103759766 32.07500076293945 C 85.55899810791016 33.10599899291992 87.70899963378906 35.53499984741211 88.625 39.13800048828125 C 89.58899688720703 42.92399978637695 90.22799682617188 46.76699829101563 90.44599914550781 50.67399978637695 C 90.48100280761719 51.29000091552734 90.58200073242188 51.90399932861328 90.60600280761719 52.52099990844727 C 90.66300201416016 54.01800155639648 90.18299865722656 54.71900177001953 88.78199768066406 55.26300048828125 C 85.36100006103516 56.59000015258789 81.80999755859375 57.4379997253418 78.20600128173828 58.07300186157227 C 76.35900115966797 58.40000152587891 74.50199890136719 58.66699981689453 72.64800262451172 58.94800186157227 C 72.42500305175781 58.98199844360352 72.19200134277344 58.93399810791016 72.05100250244141 58.92699813842773" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_dhp1zj =
    '<svg viewBox="28.9 8.2 18.2 32.0" ><path  d="M 28.9379997253418 31.85899925231934 L 31.41699981689453 31.85899925231934 L 31.41699981689453 29.21599960327148 C 30.61000061035156 29.14299964904785 29.89100074768066 29.07900047302246 29.02000045776367 29.00099945068359 L 29.02000045776367 21.44400024414063 L 33.98600006103516 21.44400024414063 L 33.98600006103516 23.69700050354004 C 33.22900009155273 23.77899932861328 32.45600128173828 23.86300086975098 31.53300094604492 23.96299934387207 L 31.53300094604492 26.43499946594238 C 32.43099975585938 26.52400016784668 33.35300064086914 26.61499977111816 34.27399826049805 26.70700073242188 L 34.2130012512207 26.63699913024902 L 34.2130012512207 31.76600074768066 L 36.7869987487793 31.76600074768066 L 36.7869987487793 26.75699996948242 C 37.71799850463867 26.64100074768066 38.48899841308594 26.54500007629395 39.33300018310547 26.43899917602539 L 39.33300018310547 23.92099952697754 C 38.53400039672852 23.84000015258789 37.81900024414063 23.76600074768066 36.8849983215332 23.67099952697754 L 36.8849983215332 16.05500030517578 L 34.21500015258789 16.05500030517578 C 34.14699935913086 16.77099990844727 34.08000183105469 17.48699951171875 34 18.34000015258789 L 29.03000068664551 18.34000015258789 L 29.03000068664551 8.182999610900879 L 36.57799911499023 8.182999610900879 L 36.57799911499023 13.13000011444092 L 39.34999847412109 13.13000011444092 C 39.40000152587891 12.35599994659424 39.44699859619141 11.63199996948242 39.50199890136719 10.7810001373291 L 41.81700134277344 10.7810001373291 L 41.81700134277344 15.82699966430664 C 41.05799865722656 15.875 40.39899826049805 15.91600036621094 39.59000015258789 15.96700000762939 L 39.59000015258789 21.125 C 40.22900009155273 21.19700050354004 40.9370002746582 21.27700042724609 41.89199829101563 21.38599967956543 L 41.89199829101563 31.73699951171875 L 44.57799911499023 31.73699951171875 C 44.6510009765625 31.05500030517578 44.72900009155273 30.33699989318848 44.83000183105469 29.40900039672852 C 45.51399993896484 29.375 46.22100067138672 29.34000015258789 47.0890007019043 29.29700088500977 L 47.0890007019043 34.43500137329102 L 39.49200057983398 34.43500137329102 L 39.49200057983398 39.45000076293945 C 38.41400146484375 39.70299911499023 37.53300094604492 39.90999984741211 36.6510009765625 40.11800003051758 L 36.7140007019043 40.17800140380859 C 36.625 38.36100006103516 36.53499984741211 36.54399871826172 36.4379997253418 34.56600189208984 L 31.48800086975098 34.56600189208984 L 31.48800086975098 39.60499954223633 C 30.55299949645996 39.64899826049805 29.85099983215332 39.68299865722656 29.0049991607666 39.72299957275391 L 29.0049991607666 31.79999923706055 L 28.9379997253418 31.85899925231934 Z M 34.04399871826172 10.77799987792969 L 31.49300003051758 10.77799987792969 L 31.49300003051758 13.19200038909912 L 34.04399871826172 13.19200038909912 L 34.04399871826172 10.77799987792969 Z" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tj7wqu =
    '<svg viewBox="7.8 8.2 18.2 18.3" ><path  d="M 25.97800064086914 26.45499992370605 L 7.824999809265137 26.45499992370605 L 7.824999809265137 8.170000076293945 L 25.97800064086914 8.170000076293945 L 25.97800064086914 26.45499992370605 Z M 23.50099945068359 10.7810001373291 L 10.3100004196167 10.7810001373291 L 10.3100004196167 23.84199905395508 L 23.50099945068359 23.84199905395508 L 23.50099945068359 10.7810001373291 Z" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ukd0wr =
    '<svg viewBox="44.8 8.2 18.2 18.3" ><path  d="M 44.79499816894531 8.16100025177002 L 63.03099822998047 8.16100025177002 L 63.03099822998047 26.42300033569336 L 44.79499816894531 26.42300033569336 L 44.79499816894531 8.16100025177002 Z M 60.41500091552734 10.76099967956543 L 47.40700149536133 10.76099967956543 L 47.40700149536133 23.88199996948242 L 60.41500091552734 23.88199996948242 L 60.41500091552734 10.76099967956543 Z" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_fq4viy =
    '<svg viewBox="7.8 45.4 18.2 18.1" ><path  d="M 26.00399971008301 63.53099822998047 L 7.835000038146973 63.53099822998047 L 7.835000038146973 45.38700103759766 L 26.00399971008301 45.38700103759766 L 26.00399971008301 63.53099822998047 Z M 10.31099987030029 60.99700164794922 L 23.42700004577637 60.99700164794922 L 23.42700004577637 47.91500091552734 L 10.31099987030029 47.91500091552734 L 10.31099987030029 60.99700164794922 Z" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_bglxjc =
    '<svg viewBox="37.0 42.5 23.6 18.5" ><path  d="M 39.47100067138672 53.10599899291992 L 39.47100067138672 47.94499969482422 C 38.61899948120117 47.85200119018555 37.91299819946289 47.77399826049805 37.02799987792969 47.67599868774414 L 37.02799987792969 42.5369987487793 L 39.48600006103516 42.5369987487793 L 39.43099975585938 42.47900009155273 L 39.43099975585938 45.12099838256836 C 40.3129997253418 45.20399856567383 40.97100067138672 45.26499938964844 41.78400039672852 45.34099960327148 C 41.87400054931641 46.02299880981445 41.96900177001953 46.73300170898438 42.09000015258789 47.63399887084961 C 42.87200164794922 47.71200180053711 43.70100021362305 47.79499816894531 44.63999938964844 47.88999938964844 C 44.69100189208984 48.73199844360352 44.73799896240234 49.51699829101563 44.79199981689453 50.41899871826172 L 47.38999938964844 50.41899871826172 L 47.38999938964844 45.3650016784668 C 48.29199981689453 45.31999969482422 48.99499893188477 45.28499984741211 49.84400177001953 45.24200057983398 C 49.93299865722656 46.05400085449219 50.0099983215332 46.76800155639648 50.10699844360352 47.65000152587891 C 50.77999877929688 47.71699905395508 51.48899841308594 47.78799819946289 52.45000076293945 47.88399887084961 L 52.45000076293945 53.02199935913086 L 60.48099899291992 53.02199935913086 L 60.41500091552734 52.9630012512207 C 60.46699905395508 53.75799942016602 60.52099990844727 54.55300140380859 60.59000015258789 55.60900115966797 L 50.06100082397461 55.60900115966797 L 50.06100082397461 60.8489990234375 C 49.19400024414063 60.89899826049805 48.49599838256836 60.9379997253418 47.67200088500977 60.98500061035156 C 47.5369987487793 60.11399841308594 47.41899871826172 59.34500122070313 47.29100036621094 58.50500106811523 C 46.36700057983398 58.43399810791016 45.50699996948242 58.36800003051758 44.64599990844727 58.29999923706055 L 44.70100021362305 58.36000061035156 L 44.70100021362305 53.05099868774414 L 39.41400146484375 53.05099868774414 L 39.47100067138672 53.10599899291992 Z" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ip1wap =
    '<svg viewBox="46.7 29.5 16.3 13.0" ><path  d="M 55.27099990844727 42.47600173950195 L 55.27099990844727 39.88299942016602 L 50.12200164794922 39.88299942016602 C 50.05099868774414 40.67300033569336 49.98099899291992 41.45500183105469 49.90000152587891 42.36100006103516 L 47.63999938964844 42.36100006103516 C 47.32799911499023 40.73899841308594 47.0099983215332 39.09500122070313 46.66299819946289 37.28900146484375 C 47.8489990234375 37.21900177001953 48.77299880981445 37.16400146484375 49.84299850463867 37.10100173950195 C 49.95899963378906 36.33100128173828 50.07400131225586 35.55899810791016 50.20199966430664 34.70700073242188 C 54.82600021362305 34.99599838256836 51.72000122070313 31.20899963378906 53.25699996948242 29.46599960327148 L 62.99499893188477 29.46599960327148 L 62.99499893188477 31.80500030517578 L 55.40900039672852 31.80500030517578 L 55.40900039672852 34.5369987487793 C 56.16999816894531 34.57600021362305 56.89599990844727 34.61199951171875 57.79399871826172 34.65800094604492 L 57.79399871826172 42.4109992980957 L 55.20999908447266 42.4109992980957 L 55.27099990844727 42.47600173950195 Z" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_t5lrw4 =
    '<svg viewBox="0.0 56.9 14.4 14.5" ><path  d="M 3.29200005531311 68.15200042724609 C 6.401000022888184 68.15200042724609 9.22700023651123 68.1719970703125 12.05099964141846 68.14199829101563 C 13.21700000762939 68.13099670410156 14.37600040435791 68.23000335693359 14.42700004577637 69.677001953125 C 14.48200035095215 71.22899627685547 13.31700038909912 71.45700073242188 12.04800033569336 71.447998046875 C 8.807999610900879 71.42500305175781 5.566999912261963 71.41400146484375 2.32699990272522 71.45200347900391 C 0.734000027179718 71.47000122070313 -0.02700000070035458 70.83999633789063 0.001000000047497451 69.16400146484375 C 0.05799999833106995 65.77500152587891 0.04199999943375587 62.38299942016602 0.004999999888241291 58.99399948120117 C -0.007000000216066837 57.82099914550781 0.3659999966621399 56.73699951171875 1.567999958992004 56.9379997253418 C 2.236000061035156 57.04999923706055 3.165999889373779 58.21799850463867 3.21399998664856 58.95999908447266 C 3.401999950408936 61.92200088500977 3.29200005531311 64.90299987792969 3.29200005531311 68.15200042724609" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_thsmmt =
    '<svg viewBox="56.8 56.9 14.4 14.6" ><path  d="M 67.90000152587891 68.15200042724609 C 67.90000152587891 65.052001953125 67.91600036621094 62.21900177001953 67.89199829101563 59.3849983215332 C 67.88200378417969 58.12799835205078 68.10199737548828 56.89199829101563 69.57700347900391 56.87599945068359 C 71.13600158691406 56.85800170898438 71.17600250244141 58.15700149536133 71.16600036621094 59.38100051879883 C 71.13700103759766 62.63100051879883 71.11299896240234 65.88300323486328 71.17299652099609 69.13200378417969 C 71.20400238037109 70.78800201416016 70.49500274658203 71.46800231933594 68.88200378417969 71.45099639892578 C 65.58000183105469 71.41600036621094 62.2760009765625 71.42900085449219 58.97299957275391 71.44599914550781 C 57.75099945068359 71.45200347900391 56.74300003051758 71.12400054931641 56.78099822998047 69.69899749755859 C 56.81499862670898 68.37799835205078 57.79600143432617 68.13300323486328 58.92800140380859 68.14299774169922 C 61.81800079345703 68.16999816894531 64.70800018310547 68.15200042724609 67.90000152587891 68.15200042724609" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4ehzwq =
    '<svg viewBox="0.0 0.0 14.6 14.4" ><path  d="M 3.322999954223633 3.263000011444092 C 3.322999954223633 6.328000068664551 3.305999994277954 9.156999588012695 3.331000089645386 11.98499965667725 C 3.342000007629395 13.22799968719482 3.240000009536743 14.43400001525879 1.652999997138977 14.42700004577637 C 0.01700000092387199 14.42000007629395 0.03999999910593033 13.14299964904785 0.04500000178813934 11.9399995803833 C 0.05700000002980232 8.689000129699707 0.08100000023841858 5.438000202178955 0.03700000047683716 2.187999963760376 C 0.01499999966472387 0.6269999742507935 0.6990000009536743 -0.00800000037997961 2.226000070571899 0.008999999612569809 C 5.664999961853027 0.04800000041723251 9.107000350952148 -0.05900000035762787 12.53899955749512 0.08799999952316284 C 13.24600028991699 0.1180000007152557 13.91699981689453 1.001000046730042 14.60400009155273 1.491999983787537 C 13.91699981689453 2.081000089645386 13.26099967956543 3.134000062942505 12.53800010681152 3.181999921798706 C 9.586000442504883 3.375999927520752 6.613999843597412 3.263000011444092 3.322999954223633 3.263000011444092" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_dtvyum =
    '<svg viewBox="56.8 0.0 14.4 14.4" ><path  d="M 67.90000152587891 3.266000032424927 C 64.80899810791016 3.266000032424927 61.98600006103516 3.25600004196167 59.1619987487793 3.269999980926514 C 57.90599822998047 3.276999950408936 56.74100112915039 3.072999954223633 56.76300048828125 1.501999974250793 C 56.78499984741211 -0.05700000002980232 58.02000045776367 0.01700000092387199 59.12699890136719 0.01799999922513962 C 62.36800003051758 0.02300000004470348 65.61000061035156 0.06400000303983688 68.8489990234375 0.001000000047497451 C 70.46600341796875 -0.02999999932944775 71.20600128173828 0.5619999766349792 71.17400360107422 2.250999927520752 C 71.11199951171875 5.573999881744385 71.14800262451172 8.89799976348877 71.16000366210938 12.2209997177124 C 71.16500091552734 13.39299964904785 71.06800079345703 14.51599979400635 69.51899719238281 14.4350004196167 C 68.06700134277344 14.35900020599365 67.89600372314453 13.26000022888184 67.89900207519531 12.09200000762939 C 67.90399932861328 9.25100040435791 67.90000152587891 6.412000179290771 67.90000152587891 3.266000032424927" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_idfbob =
    '<svg viewBox="13.2 34.3 15.9 8.1" ><path  d="M 15.47599983215332 34.31800079345703 C 17.18600082397461 34.44800186157227 18.89599990844727 34.57699966430664 20.72999954223633 34.71500015258789 C 20.81100082397461 35.42300033569336 20.89900016784668 36.19100189208984 20.99699974060059 37.04899978637695 C 21.94899940490723 37.13899993896484 22.85400009155273 37.22499847412109 23.75900077819824 37.31100082397461 L 23.70100021362305 37.25400161743164 C 23.64299964904785 38.04199981689453 23.58499908447266 38.83000183105469 23.50900077819824 39.85800170898438 L 28.64100074768066 39.85800170898438 C 28.77400016784668 40.84099960327148 28.87800025939941 41.61199951171875 28.97900009155273 42.3849983215332 C 28.97599983215332 42.38899993896484 29.02799987792969 42.32699966430664 29.02799987792969 42.32699966430664 L 13.16300010681152 42.32699966430664 L 13.16300010681152 40.04600143432617 C 13.94299983978271 39.95999908447266 14.65499973297119 39.88100051879883 15.52799987792969 39.7859992980957 L 15.52799987792969 34.26599884033203 L 15.47599983215332 34.31800079345703 Z" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_klazud =
    '<svg viewBox="29.0 50.5 10.5 10.5" ><path  d="M 39.41500091552734 53.05099868774414 L 39.41500091552734 55.54000091552734 C 38.48799896240234 55.62799835205078 37.70700073242188 55.70100021362305 36.73300170898438 55.79199981689453 L 36.73300170898438 60.85100173950195 C 35.84600067138672 60.90000152587891 35.14599990844727 60.9379997253418 34.29999923706055 60.98500061035156 C 34.2130012512207 60.15599822998047 34.13800048828125 59.4379997253418 34.03799819946289 58.48699951171875 L 29 58.48699951171875 L 29 53.08300018310547 L 34.05599975585938 53.08300018310547 C 34.11600112915039 52.20700073242188 34.1619987487793 51.54499816894531 34.2239990234375 50.65499877929688 C 34.91699981689453 50.61700057983398 35.61999893188477 50.57899856567383 36.48600006103516 50.53099822998047 C 36.58200073242188 51.32899856567383 36.66699981689453 52.04000091552734 36.77700042724609 52.97200012207031 C 37.64699935913086 53.01599884033203 38.55899810791016 53.06100082397461 39.47100067138672 53.10599899291992 L 39.41500091552734 53.05099868774414 Z" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_vddv0l =
    '<svg viewBox="29.0 39.9 7.7 10.4" ><path  d="M 36.6510009765625 40.11700057983398 L 36.6510009765625 42.40800094604492 C 35.75500106811523 42.46099853515625 35.03499984741211 42.50400161743164 34.19800186157227 42.55300140380859 C 34.13399887084961 43.35599899291992 34.07899856567383 44.07199859619141 34.01499938964844 44.88299942016602 C 33.15900039672852 44.97900009155273 32.38100051879883 45.06600189208984 31.49699974060059 45.16500091552734 L 31.49699974060059 47.68899917602539 C 32.33000183105469 47.75099945068359 33.10599899291992 47.80899810791016 33.97499847412109 47.87400054931641 L 33.97499847412109 50.22800064086914 L 29.02400016784668 50.22800064086914 C 29.02400016784668 47.56600189208984 29.02400016784668 44.94800186157227 29.02599906921387 42.32799911499023 L 28.97900009155273 42.3849983215332 C 29.77099990844727 42.38199996948242 30.55999946594238 42.38199996948242 31.375 42.38199996948242 C 31.48399925231934 41.55699920654297 31.58099937438965 40.83700180053711 31.71199989318848 39.85400009155273 C 33.4109992980957 39.96200180053711 35.05899810791016 40.06600189208984 36.71099853515625 40.17499923706055 L 36.6510009765625 40.11700057983398" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_9akjjw =
    '<svg viewBox="20.1 29.4 8.9 2.4" ><path  d="M 29.0049991607666 31.79999923706055 L 20.06399917602539 31.79999923706055 L 20.06399917602539 29.44599914550781 L 28.70899963378906 29.44599914550781 C 28.78700065612793 30.28800010681152 28.86000061035156 31.07500076293945 28.9370002746582 31.86100006103516 L 29.0049991607666 31.79999923706055" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_9zto1 =
    '<svg viewBox="13.1 29.4 3.8 5.1" ><path  d="M 15.52799987792969 34.26599884033203 C 14.75100040435791 34.3489990234375 13.97299957275391 34.43299865722656 13.09899997711182 34.52700042724609 L 13.09899997711182 29.43199920654297 L 16.92200088500977 29.43199920654297 C 16.41399955749512 31.14699935913086 15.94499969482422 32.73400115966797 15.47599983215332 34.31900024414063 L 15.52799987792969 34.26599884033203" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ylyj0n =
    '<svg viewBox="55.2 47.8 5.3 2.4" ><path  d="M 55.16899871826172 47.9010009765625 L 60.44300079345703 47.9010009765625 L 60.44300079345703 50.20899963378906 L 55.38100051879883 50.20899963378906 C 55.32699966430664 49.39899826049805 55.2760009765625 48.61700057983398 55.22800064086914 47.83300018310547 L 55.16899871826172 47.9010009765625" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_uyf5y2 =
    '<svg viewBox="42.3 58.3 2.4 5.3" ><path  d="M 44.64500045776367 58.29999923706055 L 44.64500045776367 63.59400177001953 L 42.28900146484375 63.59400177001953 L 42.28900146484375 58.48799896240234 C 43.13299942016602 58.44499969482422 43.91799926757813 58.40399932861328 44.70299911499023 58.36199951171875 L 44.64500045776367 58.29999923706055" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_c7qlnb =
    '<svg viewBox="39.4 40.0 5.3 2.5" ><path  d="M 39.48500061035156 42.5359992980957 L 39.48500061035156 40.04899978637695 L 44.70399856567383 40.04899978637695 L 44.70399856567383 42.48500061035156 L 44.75899887084961 42.42699813842773 C 42.98199844360352 42.44300079345703 41.20600128173828 42.46099853515625 39.42900085449219 42.47800064086914 L 39.48500061035156 42.5359992980957" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_h1ynul =
    '<svg viewBox="52.9 42.4 2.4 5.5" ><path  d="M 55.21099853515625 42.40999984741211 C 55.19800186157227 44.23899841308594 55.18600082397461 46.06700134277344 55.17100143432617 47.89699935913086 L 55.22800064086914 47.83200073242188 C 54.49200057983398 47.79800033569336 53.75899887084961 47.76200103759766 52.88999938964844 47.71900177001953 L 52.88999938964844 42.47700119018555 C 53.70600128173828 42.47700119018555 54.4900016784668 42.47700119018555 55.27299880981445 42.47600173950195 L 55.21099853515625 42.40999984741211" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4ldv =
    '<svg viewBox="60.6 39.9 2.3 5.1" ><path  d="M 60.63000106811523 45.03400039672852 L 60.63000106811523 40.03499984741211 C 61.39300155639648 40.00199890136719 62.09299850463867 39.97100067138672 62.96699905395508 39.93199920654297 L 62.96699905395508 44.92499923706055 C 62.25400161743164 44.95800018310547 61.54899978637695 44.99100112915039 60.63000106811523 45.03400039672852" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_66e0se =
    '<svg viewBox="23.5 34.6 2.6 2.8" ><path  d="M 23.76000022888184 37.31100082397461 C 23.6609992980957 36.46900177001953 23.5629997253418 35.62699890136719 23.45199966430664 34.6879997253418 C 24.40399932861328 34.63700103759766 25.12299919128418 34.5989990234375 26.00399971008301 34.55300140380859 L 26.00399971008301 37.09400177001953 C 25.26499938964844 37.14300155639648 24.47999954223633 37.19499969482422 23.69799995422363 37.25 L 23.76000022888184 37.31100082397461" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_lqus2r =
    '<svg viewBox="34.1 24.2 2.4 2.5" ><path  d="M 34.27399826049805 26.70599937438965 C 34.22499847412109 25.91699981689453 34.17599868774414 25.12899971008301 34.11600112915039 24.16200065612793 L 36.54700088500977 24.16200065612793 L 36.54700088500977 26.44000053405762 C 35.75199890136719 26.50600051879883 34.97900009155273 26.56800079345703 34.20999908447266 26.63500022888184 L 34.27399826049805 26.70599937438965" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5o3xrq =
    '<svg viewBox="60.5 34.8 2.5 2.3" ><path  d="M 63.04100036621094 34.80400085449219 L 63.04100036621094 37.0620002746582 L 60.63800048828125 37.0620002746582 C 60.60699844360352 36.37900161743164 60.57500076293945 35.67100143432617 60.53499984741211 34.80400085449219 L 63.04100036621094 34.80400085449219 Z" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qfmo95 =
    '<svg viewBox="7.9 29.4 2.2 2.5" ><path  d="M 7.880000114440918 29.41500091552734 L 10.11800003051758 29.41500091552734 L 10.11800003051758 31.76799964904785 C 9.427000045776367 31.79899978637695 8.729999542236328 31.82999992370605 7.880000114440918 31.86700057983398 L 7.880000114440918 29.41500091552734 Z" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_71yyx2 =
    '<svg viewBox="60.4 50.7 2.6 2.3" ><path  d="M 60.48099899291992 53.02199935913086 C 60.52299880981445 52.29299926757813 60.56600189208984 51.5629997253418 60.61600112915039 50.69300079345703 L 63.01499938964844 50.69300079345703 L 63.01499938964844 52.96900177001953 C 62.10400009155273 52.96900177001953 61.26200103759766 52.96900177001953 60.41799926757813 52.96599960327148 L 60.48099899291992 53.02199935913086" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_k807k5 =
    '<svg viewBox="44.7 42.4 2.5 2.4" ><path  d="M 44.70399856567383 42.48600006103516 L 47.13399887084961 42.48600006103516 C 47.17300033569336 43.25699996948242 47.20800018310547 43.96500015258789 47.25299835205078 44.85100173950195 L 44.75899887084961 44.85100173950195 L 44.75899887084961 42.42800140380859 L 44.70399856567383 42.48600006103516" fill="#1e4c75" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
