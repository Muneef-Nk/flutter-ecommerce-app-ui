class IntroModel{
  final String title;
  final String subTitle;
  final String image;

  IntroModel({
    required this.title,
    required this.subTitle,
    required this.image
  });
}

List<dynamic> intro=[
  IntroModel(
    title:  'Discover something new',
    subTitle: 'Special new arrivals just for you',
    image:  'assets/images/w2.png',
  ),

  IntroModel(
    title:  'Update trendy outfit',
    subTitle:  'Favorite brands and hottest trends',
    image:'assets/images/w3.png',

  ),

  IntroModel(
    title:  'Explore your true style',
    subTitle: 'Relax and let us bring the style to you',
    image: 'assets/images/w4.png',
  ),
];