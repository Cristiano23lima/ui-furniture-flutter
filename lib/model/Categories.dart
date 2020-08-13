class Category {
  String id;
  String title;
  String image;
  int numOfProducts;

  Category({this.id, this.title, this.image, this.numOfProducts});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      numOfProducts: json['numOfProducts'],
    );
  }
}

//data demo
Category category= Category(
  id: "1",
  image: "http://i.imgur.com/JqKDdxj.png",
  title: "Armchair",
  numOfProducts: 120
);