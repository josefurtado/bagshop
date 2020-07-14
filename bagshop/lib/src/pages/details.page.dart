import 'package:bagshop/src/widgets/custom_app_bar.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatelessWidget {
  Icon starIcon({@required Color color}) {
    return Icon(
      Icons.star,
      color: color,
      size: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFE243D),
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        height: 70.0,
        customLeading: Container(
          margin: EdgeInsets.only(top: 15.0, left: 20.0),
          padding: EdgeInsets.all(2.0),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(
              'assets/icons/arrow-back-white.svg',
            ),
          ),
        ),
        customAction: InkWell(
          onTap: () => {},
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  child: SvgPicture.asset(
                    'assets/icons/white-shopping-cart.svg',
                  ),
                ),
              ),
              Positioned(
                right: 1.0,
                child: Container(
                  width: 14.0,
                  height: 14.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 360.0,
                  width: 360.0,
                  child: Image.asset(
                    'assets/images/nike_brasilia_shadow.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 320.0),
                    child: SvgPicture.asset(
                      'assets/icons/bullets.svg',
                    ),
                  ),
                )
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 25.0),
                height: 320.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      width: 320,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Nike Brasilia',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontFamily: 'Poppins-SemiBold',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              starIcon(color: Color(0xFFFEC247)),
                              starIcon(color: Color(0xFFFEC247)),
                              starIcon(color: Color(0xFFFEC247)),
                              starIcon(color: Color(0xFFFEC247)),
                              starIcon(color: Color(0xFFE5E5E5)),
                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  '56 Reviews',
                                  style: TextStyle(
                                    color: Color(0x709F9F9F),
                                    fontSize: 15.0,
                                    fontFamily: 'Poppins-Bold',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 70.0),
                                child: Text(
                                  '\$${45}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                    fontFamily: 'Poppins-SemiBold',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "The medium-sized Nike Brasilia Backpack is ideal for packing everything you need to get you through a day of training when you're away from your locker, gym or home.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Poppins-Regular',
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Quantity',
                                  style: TextStyle(
                                    color: Color(0xFFA4A4A4),
                                    fontSize: 17.0,
                                    fontFamily: 'Poppins-Regular',
                                  ),
                                ),
                                Container(
                                  width: 120.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE9E9E9),
                                          borderRadius: BorderRadius.circular(
                                            8.0,
                                          ),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.remove,
                                            size: 18.0,
                                            color: Color(0xFFA4A4A4),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 38.0,
                                        height: 38.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE9E9E9),
                                          borderRadius: BorderRadius.circular(
                                            8.0,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '10',
                                            style: TextStyle(
                                              color: Color(0xFF5B5B5B),
                                              fontSize: 20.0,
                                              fontFamily: 'Poppins-Regular',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE9E9E9),
                                          borderRadius: BorderRadius.circular(
                                            8.0,
                                          ),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.add,
                                            size: 18.0,
                                            color: Color(0xFFA4A4A4),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFFE243D),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: SvgPicture.asset(
                              'assets/icons/white-shopping-cart.svg',
                            ),
                          ),
                          Text(
                            'Add To My Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'Poppins-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 40.0,
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 15.0,
                        offset: Offset(2.0, 5.0),
                      ),
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/red_heart_details.svg',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
