import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_ng/src/UI/PortfolioPage/main_page.dart';

import 'package:flutter_animator/flutter_animator.dart';

class SmallHomeScreen extends StatelessWidget {



  final GlobalKey<AnimatorWidgetState> basicAnimation =
      GlobalKey<AnimatorWidgetState>();

  final GlobalKey<InOutAnimationState> inOutAnimation =
      GlobalKey<InOutAnimationState>();

  List<Widget> navButtons() => [
        NavButton(
          text: "Home",
          onPressed: () {
            html.window.open("https://github.com", "Pk");
          },
        ),
        NavButton(
          text: "About",
          onPressed: () {
            html.window.open("https://github.com", "Gh");
          },
        ),
        NavButton(
          text: "Porfolio",
          onPressed: () {
            html.window.open("https://github.com", "Pk");
          },
        ),
        NavButton(
          text: "Contact",
          onPressed: () {
            html.window.open("https://github.com", "Pk");
          },
        ),
      ];
  @override
  Widget build(BuildContext context) {
    final GlobalKey _scaffoldKey = new GlobalKey();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading:InkWell(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset('assets/images/profile.jpg'),
          ),
        ),
      ),),
      backgroundColor: Colors.purple,
      key: _scaffoldKey,

      endDrawer: Drawer(
        
       child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: navButtons(),
                ),
      ),
          body: Container(
        child: Stack(
          
          children: [
            Column(
              children: [
                Expanded(
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
                        Text(
                          "Share your profile",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(80),
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
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
                ZoomInDown(
                                  child: Material(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "View profile",
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(80),
                                color: Colors.purple,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                              width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    labelText: 'Enter name',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.purple),
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
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 

                                RichText(
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
                  Container(
                    width: 145,
                    height: 2,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.purple})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(text),

      hoverColor: Colors.blueAccent,
     onPressed: onPressed,
    );
  }
}
