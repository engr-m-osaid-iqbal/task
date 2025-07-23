class ShoppingData {
  ShoppingData({
    required this.productPicture,
    required this.productName,
    required this.productPrice,
  });

  String productPicture;
  String productName;
  String productPrice;
}

List<ShoppingData> shoppingItems = [
  ShoppingData(
    productPicture: "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
    productName: "Special Shoe",
    productPrice: "2K Points",
  ),
  ShoppingData(
    productPicture: "https://images.unsplash.com/photo-1551028719-00167b16eac5",
    productName: "Special Jacket",
    productPrice: "1K Points",
  ),
  ShoppingData(
    productPicture:
        "https://images.unsplash.com/photo-1523275335684-37898b6baf30",
    productName: "Special Watch",
    productPrice: "2K Points",
  ),
];
