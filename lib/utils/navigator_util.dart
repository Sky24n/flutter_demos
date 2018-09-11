import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class NavigatorUtil {
  static void push(BuildContext context, Widget widget) {
    if (context == null || widget == null) return;
    Navigator.push(context, new CupertinoPageRoute<void>(
      builder: (BuildContext context) {
        return widget;
      },
    ));
  }
}
