import 'package:flutter/material.dart';
import 'package:furniture/components/title_text.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/model/Categories.dart';
import 'package:furniture/size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    @required this.category,
    Key key,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize; 


    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),//20
      child: SizedBox(
        width: defaultSize * 20.5,
        child: AspectRatio(
          aspectRatio: 0.83,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
              ),
              ClipPath(
                clipper: CategoryCustoShape(),
                child: AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    padding: EdgeInsets.all(defaultSize * 2),
                    color: kSecondaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TitleText(
                          title: category.title
                        ),
                        SizedBox(height: defaultSize,),
                        Text(
                          "${category.numOfProducts}+ Products", 
                          style: TextStyle(color: kTextColor.withOpacity(0.6)),
                        )
                      ],
                    ),
                  )
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 1.15,
                  child: new FadeInImage.assetNetwork(
                    placeholder: "assets/spinner.svg", 
                    image: category.image
                  )
                )
              )
            ],
          ),
        )
      ),
    );
  }
}


//para desenhar o card desejado
class CategoryCustoShape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
      Path path = Path();
      double height = size.height;
      double width = size.width;

      double cornerSize = 30;

      path.lineTo(0, height - cornerSize);
      path.quadraticBezierTo(0, height, cornerSize, height);
      path.lineTo(width-cornerSize, height);
      path.quadraticBezierTo(width, height, width, height - cornerSize);
      path.lineTo(width, cornerSize);
      path.quadraticBezierTo(width, 0, width-cornerSize, 0);
      path.lineTo(cornerSize, cornerSize * 0.75);
      path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
      
      path.close();

      return path;
    }
  
    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}