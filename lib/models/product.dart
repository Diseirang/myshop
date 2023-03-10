class ProductModel {
  final String id;
  final String title;
  final String decription;
  final double price;
  final String imageUrl;
  bool isSelected;

  ProductModel({
    required this.id,
    required this.title,
    required this.decription,
    required this.price,
    required this.imageUrl,
    this.isSelected = false,
  });
}
