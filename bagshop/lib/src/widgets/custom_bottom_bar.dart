import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Colors.transparent,
      shape: CircularNotchedRectangle(),
      child: ClipPath(
        clipper: NavigationBarClip(),
        child: Container(
          height: 60.0,
          color: Color(0xFFFE243D),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: SvgPicture.asset('assets/icons/bookmark.svg'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: SvgPicture.asset('assets/icons/heart.svg'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 140.0),
                child: SvgPicture.asset('assets/icons/shopping-bag.svg'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: SvgPicture.asset('assets/icons/user.svg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationBarClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 412.5;
    final double _yScaling = size.height / 60;
    path.lineTo(373.51 * _xScaling, 0 * _yScaling);
    path.cubicTo(
      373.51 * _xScaling,
      0 * _yScaling,
      287.18 * _xScaling,
      0 * _yScaling,
      287.18 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      272.32 * _xScaling,
      0 * _yScaling,
      258.8 * _xScaling,
      8.53 * _yScaling,
      252.33 * _xScaling,
      21.9 * _yScaling,
    );
    path.cubicTo(
      244.19 * _xScaling,
      38.72 * _yScaling,
      226.95 * _xScaling,
      50.32 * _yScaling,
      207.01 * _xScaling,
      50.32 * _yScaling,
    );
    path.cubicTo(
      187.07 * _xScaling,
      50.32 * _yScaling,
      169.83 * _xScaling,
      38.72 * _yScaling,
      161.69 * _xScaling,
      21.9 * _yScaling,
    );
    path.cubicTo(
      155.22 * _xScaling,
      8.52 * _yScaling,
      141.7 * _xScaling,
      0 * _yScaling,
      126.84 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      126.84 * _xScaling,
      0 * _yScaling,
      40.49 * _xScaling,
      0 * _yScaling,
      40.49 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      18.13 * _xScaling,
      0 * _yScaling,
      0 * _xScaling,
      18.13 * _yScaling,
      0 * _xScaling,
      40.49 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      40.49 * _yScaling,
      0 * _xScaling,
      83 * _yScaling,
      0 * _xScaling,
      83 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      83 * _yScaling,
      414 * _xScaling,
      83 * _yScaling,
      414 * _xScaling,
      83 * _yScaling,
    );
    path.cubicTo(
      414 * _xScaling,
      83 * _yScaling,
      414 * _xScaling,
      40.49 * _yScaling,
      414 * _xScaling,
      40.49 * _yScaling,
    );
    path.cubicTo(
      414 * _xScaling,
      18.13 * _yScaling,
      395.87 * _xScaling,
      0 * _yScaling,
      373.51 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      373.51 * _xScaling,
      0 * _yScaling,
      373.51 * _xScaling,
      0 * _yScaling,
      373.51 * _xScaling,
      0 * _yScaling,
    );

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> size) {
    return true;
  }
}
