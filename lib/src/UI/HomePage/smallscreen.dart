import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_ng/src/UI/PortfolioPage/main_page.dart';

class SmallHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
            Material(
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
    );
  }
}
