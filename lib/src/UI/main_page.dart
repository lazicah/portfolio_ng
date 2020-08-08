import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Stack(
              children: [TopSection(), CenterBody(size: size)],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 200,
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Made with',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: ScreenUtil().setSp(20),
                      ),
                      children: [
                        TextSpan(
                          text: ' Flutter',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(20),
                          ),
                        )
                      ]),
                ),
              ),
              color: Colors.blueGrey,
            )
          ],
        ),
      ),
    );
  }
}

class CenterBody extends StatelessWidget {
  const CenterBody({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.60,
        ),
        child: Column(
          children: [
            Material(
              elevation: 5,
              child: Container(
                constraints: BoxConstraints(maxWidth: 980),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(ScreenUtil().setSp(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Exclusively'.toUpperCase(),
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(30),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'works',
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                                children: [
                                  TextSpan(
                                    text: ' with \nStartups and founders',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  )
                                ]),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(30),
                          ),
                          Container(
                            width: 50,
                            height: 2,
                            color: Colors.purple,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    Container(
                      height: 300,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(
                            vertical: 10, horizontal: ScreenUtil().setSp(30)),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) => WorksCard(
                          index: index,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setSp(30),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Material(
              elevation: 5,
              child: Container(
                constraints: BoxConstraints(maxWidth: 980, minWidth: 980),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(ScreenUtil().setSp(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Skills'.toUpperCase(),
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(30),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'strenghts',
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                                children: [
                                  TextSpan(
                                    text: ' and \nabilities',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  )
                                ]),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(30),
                          ),
                          Container(
                            width: 50,
                            height: 2,
                            color: Colors.purple,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Wrap(
                          children: List.generate(
                              9,
                              (index) => Card(
                                    child: Container(
                                      width: 200,
                                      height: 100,
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Architecture'),
                                          Spacer(),
                                          LinearProgressIndicator(
                                            value: 0.2,
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WorksCard extends StatelessWidget {
  final int index;
  const WorksCard({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 200,
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Center(
                  child: FlutterLogo(
                size: 100,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'A social community for othehhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhrseeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee to join $index',
              maxLines: 2,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                Text(
                  'Social, Ui, Firebase',
                  style: TextStyle(color: Colors.purple, fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'See on Github',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(CupertinoIcons.forward)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.65,
      child: Stack(
        children: [
          // Container(
          //   width: size.width,
          //   height: size.height,
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         colors: [Color(0xFF642B73), Color(0xFFC6426E)]),
          //   ),
          // ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, I am',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(30),
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Lazarus Nwankwo',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(40),
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Text(
                        'Mobile Developer from Nigeria',
                        style: TextStyle(fontSize: 12, color: Colors.white),
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
                              Text('Contact'),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(CupertinoIcons.phone)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        children: [
                          Text(
                            'follow me here',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {},
                              child: FaIcon(FontAwesomeIcons.facebook)),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {},
                              child: FaIcon(FontAwesomeIcons.github)),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {},
                              child: FaIcon(FontAwesomeIcons.twitter)),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {},
                              child: FaIcon(FontAwesomeIcons.instagram))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 200,
                  height: size.height * 0.7,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      foregroundColor: Colors.blue,
                      radius: size.width / 8,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image.asset(
                            'assets/images/profile.jpg',
                            fit: BoxFit.fill,
                            width: size.width / 4.5,
                            height: size.width / 4.5,
                          )),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
