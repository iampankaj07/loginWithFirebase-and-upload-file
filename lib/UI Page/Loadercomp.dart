import 'package:flutter/material.dart';

class LoaderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      color: Color(0xFF212121).withOpacity(0.5),
      child: Padding(
        padding: EdgeInsets.only(top: statusBarHeight),
        child: Column(
          children: <Widget>[
            LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
