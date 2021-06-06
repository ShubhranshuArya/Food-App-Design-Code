import 'package:flutter/foundation.dart';

class FoodModel {
  final String name;
  final String image;
  final String description;
  final int price;
  final double rating;
  final int discount;

  const FoodModel({
    @required this.name,
    @required this.image,
    @required this.description,
    @required this.price,
    @required this.rating,
    this.discount,
  });
}
