import 'package:bagshop/src/widgets/custom_app_bar.widget.dart';
import 'package:bagshop/src/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  Widget _categoryItem({
    @required double width,
    @required double height,
    @required String text,
    @required Color textColor,
    @required Color color,
    @required bool selectedItem,
  }) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(left: 30.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(40.0),
        boxShadow: selectedItem
            ? <BoxShadow>[
                BoxShadow(
                  color: Color(0xFFFE243D).withOpacity(0.3),
                  blurRadius: 22.0,
                  offset: Offset(0, 13),
                ),
              ]
            : null,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 13.0,
            fontFamily: 'Poppins-SemiBold',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFF8F8F8),
      floatingActionButton: Container(
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          color: Color(0xFFFFE243D),
          shape: BoxShape.circle,
        ),
        child: Container(
          padding: EdgeInsets.all(23.0),
          child: SvgPicture.asset(
            'assets/icons/home-alt.svg',
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigationBar(),
      appBar: CustomAppBar(
        height: 70.0,
        customLeading: Padding(
          padding: EdgeInsets.only(
            left: 30.0,
            top: 20.0,
          ),
          child: Container(
            padding: EdgeInsets.all(4.0),
            child: SvgPicture.asset(
              'assets/icons/menu.svg',
            ),
          ),
        ),
        customAction: InkWell(
          onTap: () => {},
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5.0),
                child: SvgPicture.asset(
                  'assets/icons/shopping-cart.svg',
                ),
              ),
              Positioned(
                right: 1.0,
                top: 2.0,
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: -300,
            top: -285,
            child: Container(
              width: 680.0,
              height: 680.0,
              decoration: BoxDecoration(
                color: Color(0xFFEFEFEF).withOpacity(0.8),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                width: size.width,
                height: 90,
                margin: EdgeInsets.only(top: 110.0),
                padding: EdgeInsets.only(left: 28.0, right: 34.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text.rich(
                      TextSpan(
                        text: 'Our',
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\nProducts',
                            style: TextStyle(
                              fontFamily: 'Poppins-Bold',
                              fontSize: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 43.0,
                      height: 43.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 15.0,
                            offset: Offset(2.0, 5.0),
                          )
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/search.svg',
                          width: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.12,
                padding: EdgeInsets.only(top: 10.0),
                margin: EdgeInsets.only(top: 8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _categoryItem(
                          width: 104.0,
                          height: 44.0,
                          text: 'Popular',
                          textColor: Colors.white,
                          color: Color(0xFFFE243D),
                          selectedItem: true,
                        ),
                        _categoryItem(
                          width: 104.0,
                          height: 44.0,
                          text: 'Top rated',
                          textColor: Color(0xFFB2B2B2),
                          color: Color(0xFFF6F6F6),
                          selectedItem: false,
                        ),
                        _categoryItem(
                          width: 138.0,
                          height: 44.0,
                          text: 'New collection',
                          textColor: Color(0xFFB2B2B2),
                          color: Color(0xFFF6F6F6),
                          selectedItem: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                width: size.width,
                margin: EdgeInsets.only(top: 15.0),
                padding: EdgeInsets.only(
                  top: 2.0,
                  bottom: 2.0,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    InkWell(
                      onTap: () => {},
                      child: Container(
                        width: 230.0,
                        margin: EdgeInsets.only(left: 30.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 214.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2243D),
                                borderRadius: BorderRadius.circular(26.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    width: 200,
                                    margin: EdgeInsets.all(20.0),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text.rich(
                                              TextSpan(
                                                text: 'Nike',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins-Regular',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 20.0,
                                                  color: Colors.white,
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: '\nBrasilia',
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'Poppins-SemiBold',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 18.0,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              '\$${45}',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-Regular',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.all(16.0),
                                        child: SvgPicture.asset(
                                          'assets/icons/heart.svg',
                                        ),
                                      ),
                                      Container(
                                        width: 77.5,
                                        height: 51.0,
                                        padding: EdgeInsets.all(7.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(22.0),
                                            bottomRight: Radius.circular(25.0),
                                          ),
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/icons/plus_red.svg',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 95.0,
                              top: 80.0,
                              child: Image.asset(
                                'assets/images/nike_brasilia.png',
                                width: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {},
                      child: Container(
                        width: 250.0,
                        margin: EdgeInsets.only(left: 30.0, right: 10.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 214.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(26.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    width: 200,
                                    margin: EdgeInsets.all(20.0),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text.rich(
                                              TextSpan(
                                                text: 'Adidas',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins-Regular',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 20.0,
                                                  color: Colors.black,
                                                ),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: '\nPOWER 5 BACKPACK',
                                                    style: TextStyle(
                                                      fontFamily:
                                                          'Poppins-SemiBold',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              '\$${70}',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-Regular',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.all(16.0),
                                        child: SvgPicture.asset(
                                          'assets/icons/red_heart.svg',
                                        ),
                                      ),
                                      Container(
                                        width: 77.5,
                                        height: 51.0,
                                        padding: EdgeInsets.all(7.0),
                                        child: SvgPicture.asset(
                                          'assets/icons/plus_red.svg',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 40.0,
                              top: 80.0,
                              child: Image.asset(
                                'assets/images/adidas_power.png',
                                width: 210,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
