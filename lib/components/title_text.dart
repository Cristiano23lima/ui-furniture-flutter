import 'package:flutter/material.dart';
import 'package:furniture/size_config.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    this.title,
    Key key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      title, 
      style: TextStyle(
        fontSize: defaultSize * 1.6, 
        fontWeight: FontWeight.bold)
    ,);
  }
}