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
        image: data['image'],
        rating: Rating.fromJson(data["rating"]));
  }
}

class Rating {
  final num rate;
  final num count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map<String, dynamic> data) {
    return Rating(rate: data["rate"], count: data["count"]);
  }
}