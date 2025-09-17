class StoreModel {
  final int id;
  final String title;
  final price;
  final String description;
  final String image;
  final Rating rating;
  StoreModel({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.rating,
  });
  factory StoreModel.fromJson(json) {
    return StoreModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      description: json['description'],
      price: json['price'],
      rating: Rating.fromJson(json['rating']),
    );
  }
}

class Rating {
  final rate;
  final count;
  Rating({required this.rate, required this.count});
  factory Rating.fromJson(json) {
    return Rating(rate: json['rate'], count: json['count']);
  }
}
