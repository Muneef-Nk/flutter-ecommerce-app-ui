

class DrawerModel{
  final String label;
  final String icon;
  DrawerModel({required this.icon, required this.label});
}

List<DrawerModel> drawerModel=[
  DrawerModel(icon: "assets/icons/home.svg", label: "HomePage"),
  DrawerModel(icon: "assets/icons/search.svg", label: "Discover"),
  DrawerModel(icon: "assets/icons/shop.svg", label: "My Order"),
  DrawerModel(icon: "assets/icons/Profile.svg", label: "My profile"),
  DrawerModel(icon: "assets/icons/Setting_line.svg", label: "Setting"),
  DrawerModel(icon: "assets/icons/Message_light.svg", label: "Support"),
  DrawerModel(icon: "assets/icons/Line.svg", label: "About us"),
];