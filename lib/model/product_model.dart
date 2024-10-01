class Product {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final double oldPrice;
  final double rating;
  final int reviewsCount;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.oldPrice,
    required this.rating,
    required this.reviewsCount,
  });

  // Factory method to create a Product from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      price: json['price'].toDouble(),
      oldPrice: json['oldPrice'].toDouble(),
      rating: json['rating'].toDouble(),
      reviewsCount: json['reviewsCount'],
    );
  }

  // Method to convert a Product to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'oldPrice': oldPrice,
      'rating': rating,
      'reviewsCount': reviewsCount,
    };
  }
}
  