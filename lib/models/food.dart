class Food {
  final String name;
  final String imagePath;
  final double price;
  final String decription;
  final List<String> ingridients;
  Food(
      {required this.ingridients,
      required this.name,
      required this.imagePath,
      required this.price,
      required this.decription});
}
