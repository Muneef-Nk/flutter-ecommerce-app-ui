class TitleModel{
  final String image;
  final String title;

  TitleModel({required this.image, required this.title});
}


List<TitleModel> title=[
  TitleModel(image: "assets/icons/women.svg", title: "Women"),
  TitleModel(image: "assets/icons/men.svg", title: "Men"),
  TitleModel(image: "assets/icons/Accessories.svg", title: "Accessories"),
  TitleModel(image: "assets/icons/Beauty.svg", title: "Beauty"),
];