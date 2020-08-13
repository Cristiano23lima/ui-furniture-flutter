class Product{
  final int price;
  final String id, title, category, image, subTitle, description;

  Product({
    this.id,
    this.title,
    this.category,
    this.image,
    this.subTitle,
    this.description,
    this.price
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      price: json['price'],
      category: json['category'],
      subTitle: json['subTitle'],
      description: json['description']
    );
  }
}

//Data demo
Product product = Product(
  id: "1",
  price: 100,
  title: "Wood Frame",
  image: "assets/images/Item_1.png",
  category: 'Chair',
  subTitle: 'Tieton Armchair',
  description: 'This armchair is an elegant and functional piece of furniture'
);