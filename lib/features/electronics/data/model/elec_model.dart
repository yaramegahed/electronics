class ProductTestModel {
  final int id;
  final String title;
  final String category;
  final String description;
  final String image;
  final Rating rating;

  ProductTestModel(
      {required this.category,
      required this.id,
      required this.title,
      required this.rating,
      required this.description,
      required this.image});

  factory ProductTestModel.fromJson(Map<String, dynamic> data) {
    return ProductTestModel(
        category: data["category"],
        id: data["id"],
        title: data["title"],
        description: data["description"],
        image: 'image',
        rating: Rating.fromJson(data["rating"]));
  }
}

class Rating {
  final double rate;
  final double count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map<String, dynamic> data) {
    return Rating(
        rate: _parseJsonToDouble(data["rate"]),
        count: _parseJsonToDouble(data["count"]));
  }
}

double _parseJsonToDouble(dynamic value) {
  if (value is String) {
    return double.tryParse(value) ?? 0.0;
  } else if (value is num) {
    return value.toDouble();
  } else {
    return 0.0;
  }
}
