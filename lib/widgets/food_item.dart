import 'package:flutter/foundation.dart';

FooditemList fooditemList = FooditemList(
  foodItems: [
  FoodItem(
    id: 1,
    title: "Duplo",
    hotel: "Quintal Burguer",
    price: 20.00,
    imgUrl:
        "https://instagram.frvd1-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s640x640/54446921_308438543151160_4081825244998414691_n.jpg?_nc_ht=instagram.frvd1-1.fna.fbcdn.net&_nc_cat=104&oh=96ad741ad8bbafe3dd918a0fa871bac1&oe=5E73C835",
  ),
  FoodItem(
    id: 2,
    title: "Power Bull",
    hotel: "Total Burguer",
    price: 15.00,
    imgUrl:
        "https://b.zmtcdn.com/data/pictures/chains/8/18427868/1269c190ab2f272599f8f08bc152974b.png",
  ),
  FoodItem(
    id: 3,
    title: "Supreme Pizza Burger",
    hotel: "Golf Course",
    price: 8.49,
    imgUrl: "https://static.food2fork.com/burger53be.jpg",
  ),
  FoodItem(
    id: 4,
    title: "Chilly Cheeze Burger",
    hotel: "Las Vegas Hotel",
    price: 14.49,
    imgUrl: "https://static.food2fork.com/36725137eb.jpg",
  ),
  FoodItem(
    id: 5,
    title: "Beach BBQ Burger",
    hotel: "Las Vegas Hotel",
    price: 14.49,
    imgUrl: "https://static.food2fork.com/turkeyburger300x200ff84052e.jpg",
  ),
  FoodItem(
    id: 6,
    title: "Beach BBQ Burger",
    hotel: "Las Vegas Hotel",
    price: 14.49,
    imgUrl:
        "https://cdn.pixabay.com/photo/2018/03/04/20/08/burger-3199088__340.jpg",
  ),
]);

class FooditemList {
  List<FoodItem> foodItems;

  FooditemList({@required this.foodItems});
}

class FoodItem {
  int id;
  String title;
  String hotel;
  double price;
  String imgUrl;
  int quantity;

  FoodItem({
    @required this.id,
    @required this.title,
    @required this.hotel,
    @required this.price,
    @required this.imgUrl,
    this.quantity = 1,
  });

  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }

  void decrementQuantity() {
    this.quantity = this.quantity - 1;
  }
}
