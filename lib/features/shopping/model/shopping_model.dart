import 'package:flutter/material.dart';

class ShoppingModel {
  String? productName;
  String? price;
  Widget? widget;
  String? productImage;

  ShoppingModel({this.productName, this.price, this.widget, this.productImage});
}

List<ShoppingModel> shoppingList = [
  ShoppingModel(
    price: '39780',
    productName: 'Nokia G20',
    productImage: 'assets/images/nokia_Image.png',
    widget: Column(children: [Text('Pay'), Text('40%')]),
  ),

  ShoppingModel(
    price: '295999',
    productName: 'Iphone Xs Max',
    productImage: 'assets/images/Iphone_image.png',
    widget: Image.asset('assets/images/ogabassey 1.png'),
  ),

    ShoppingModel(
    price: '295999',
    productName: 'Iphone Xs Max',
    productImage: 'assets/images/Iphone_image.png',
    widget: Image.asset('assets/images/ogabassey 1.png'),
  ),

    ShoppingModel(
    price: '295999',
    productName: 'Iphone Xs Max',
    productImage: 'assets/images/Iphone_image.png',
    widget: Image.asset('assets/images/ogabassey 1.png'),
  ),
];
