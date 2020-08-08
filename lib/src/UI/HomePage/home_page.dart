import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_ng/src/UI/HomePage/bigscreen.dart';
import 'package:portfolio_ng/src/UI/HomePage/smallscreen.dart';
import 'package:portfolio_ng/src/UI/PortfolioPage/main_page.dart';
import 'package:portfolio_ng/src/UI/widgets/responsivewidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.purple,
      body: ResponsiveView(
        smallscreen: (context, size) => SmallHomeScreen(),
        bigscreen: (context, size) => BigHomeScreen(),
      ),
    );
  }
}
