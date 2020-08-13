import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/model/Product.dart';
import 'package:furniture/screens/details/components/body.dart';
import 'package:furniture/size_config.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key key,@required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: BodyDetail(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(leading: 
      IconButton(icon: SvgPicture.asset("assets/icon/back.svg"), 
      onPressed: () {
        Navigator.pop(context);
      }),
      actions: <Widget>[
        IconButton(icon: SvgPicture.asset("assets/icon/cart_with_item.svg"), onPressed: (){}),
        SizedBox(width: SizeConfig.defaultSize,),
      ]
    );
  }
}