class FeatureProducts{
  final String img;
  final String name;
  final String price;

  FeatureProducts({required this.img, required this.name, required this.price});
}

List<FeatureProducts> featureProducts=[
  FeatureProducts(img: 'assets/images/f1.png', name: "Turtleneck Sweater ", price: "\$ 39.99"),
  FeatureProducts(img: 'assets/images/f2.png', name: "Long Sleeve Dress", price: "\$ 45.00"),
  FeatureProducts(img: 'assets/images/f3.png', name: "Sportwear Set", price: "\$ 50.00"),
  FeatureProducts(img: 'assets/images/f4.png', name: "Elegant Dress", price: "\$ 75.00"),
];