import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_ng/src/UI/PortfolioPage/main_page.dart';
import 'package:flutter_animator/flutter_animator.dart';

import '../menu_item.dart';


  final GlobalKey<AnimatorWidgetState> basicAnimation =
      GlobalKey<AnimatorWidgetState>();

  final GlobalKey<InOutAnimationState> inOutAnimation =
      GlobalKey<InOutAnimationState>();

class BigHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(40),
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    SizedBox(
                      height: 20,
                    ),
                    BounceIn(
                      key: basicAnimation,
                                          child: Text(
                        "Share your profile",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(80),
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {},
                      child: Container(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Start here'),
                            Icon(FontAwesomeIcons.accusoft)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ZoomInRight(
                              child: Material(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "View profile",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(60),
                              color: Colors.purple,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                            width: ScreenUtil().setWidth(300),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                  labelText: 'Enter name',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.purple),
                                      borderRadius: BorderRadius.circular(100)),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.purple, width: 3),
                                      borderRadius: BorderRadius.circular(100))),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          textColor: Colors.white,
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MainPage()));
                          },
                          child: Container(
                            width: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Go'),
                                Icon(FontAwesomeIcons.forward)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(46),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16),
              ),
            ],
          ),
          child: Container(
            height: 20,
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/images/profile.jpg",
                  height: 35,
                  alignment: Alignment.topCenter,
                ),
                SizedBox(width: 5),
                Text(
                  "Portfolio.Ng".toUpperCase(),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                MenuItem(
                  title: "Home",
                  press: () {},
                ),
                MenuItem(
                  title: "About",
                  press: () {},
                ),
                MenuItem(
                  title: "Portfolio",
                  press: () {},
                ),
                MenuItem(
                  title: "Contact",
                  press: () {},
                ),
                MenuItem(
                  title: "Login",
                  press: () {},
                ),
              ],
            ),
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.only(top:100.0,
          bottom:50,
          left:20,),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ZoomInLeft(
                
                              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Pro'.toUpperCase(),
                      style: GoogleFonts.montserratAlternates(
                          letterSpacing: 5,
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: 'file',
                      style: GoogleFonts.montserratAlternates(
                          letterSpacing: 5,
                          color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    )
                  ]),
                ),
              ),
              Container(
                width: 145,
                height: 2,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }
}
