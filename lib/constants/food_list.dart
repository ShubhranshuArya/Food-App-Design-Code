import 'package:project1_food_app_design/constants/fitness__app_icons.dart';
import 'package:project1_food_app_design/constants/food_model.dart';
import 'package:project1_food_app_design/constants/tap_model.dart';

const tap_list = [
  TapModel(
    name: 'Restaurants',
    icon: Fitness_App.tray,
  ),
  TapModel(
    name: 'Coffee Shops',
    icon: Fitness_App.coffee_cup,
  ),
  TapModel(
    name: 'Cafe',
    icon: Fitness_App.cafe,
  ),
  TapModel(
    name: 'Bar',
    icon: Fitness_App.beer,
  ),
];

const popular_food = [
  FoodModel(
    name: 'Blueberry Toast',
    image: 'assets/images/blueberry_toast.jpg',
    description:
        'This moist banana blueberry loaf is refined sugar free & easy to prepare.',
    price: 6,
    rating: 4.4,
  ),
  FoodModel(
    name: 'Ham Burgers',
    image: 'assets/images/hamburger.jpg',
    description:
        'The rich, creamy taste of cheese. The sweetness of the hamburger buns.',
    price: 12,
    rating: 4.3,
  ),
  FoodModel(
    name: 'Spaghetti',
    image: 'assets/images/spaghetti.jpg',
    description:
        'Tired of eating Red Tomato Pasta? Try this White Sauce Pasta Recipe',
    price: 14,
    rating: 4.1,
  ),
];
const special_food = [
  FoodModel(
    name: 'Green Salad',
    image: 'assets/images/green_salad.jpg',
    description:
        'Tear the lettuce leaves into bite-sized pieces and transfer the..',
    price: 6,
    rating: 4.1,
    discount: 20,
  ),
  FoodModel(
    name: 'Scotch Pancakes',
    image: 'assets/images/pancakes.jpg',
    description:
        'Sift the flour and sugar into a bowl and make a well in the centre. Add..',
    price: 8,
    rating: 4.3,
    discount: 10,
  ),
  FoodModel(
    name: 'Lasagna',
    image: 'assets/images/lasagna.jpg',
    description:
        'lasagna, is an Italian dish made of stacked layers of thin flat pasta wit..',
    price: 12,
    rating: 4.4,
    discount: 12,
  ),
];
