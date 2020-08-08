import 'package:flutter/material.dart';

class ResponsiveView extends StatelessWidget {
  final Widget Function(BuildContext, Size) smallscreen;
  final Widget Function(BuildContext, Size) bigscreen;

  const ResponsiveView({Key key, this.smallscreen, this.bigscreen})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var size = Size(constraints.maxWidth, constraints.maxHeight);
      if (constraints.maxWidth > 600) {
        return bigscreen(context, size);
      } else
        return smallscreen(context, size);
    });
  }
}
