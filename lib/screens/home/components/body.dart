import 'package:flutter/material.dart';
import 'package:furniture/components/title_text.dart';
import 'package:furniture/screens/home/components/categories.dart';
import 'package:furniture/screens/home/components/recommend_product.dart';
import 'package:furniture/services/fetchCategories.dart';
import 'package:furniture/services/fetchProducts.dart';
import 'package:furniture/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),//20
              child: TitleText(title: "Browse by Categories",),
            ),
            FutureBuilder(
              future: fetchCategory(),
              builder: (context, snapshot) => 
                snapshot.data != null ? Categories(
                  categories: snapshot.data,
                ) : Center(child: new Image.asset("assets/riple.svg"))
            ),
            Divider(height: 5,),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),//20
              child: TitleText(title: "Recommands for You"),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) => 
                snapshot.data != null? RecommedProduct(
                  products: snapshot.data,
                ) : Center(child: new Image.asset("assets/riple.svg"))
            ),
          ],  
        ),
      ),
    );
  }
}
