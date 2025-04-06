import 'package:credpal_test/app/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    widget: Column(
      children: [
        Text(
          'Pay',
          style: AppTextStyles.headline1.copyWith(
            fontSize: 11.sp,
            color: Color(0xffB3B3CC),
          ),
        ),
        Text(
          '40%',
          style: AppTextStyles.headline1.copyWith(
            fontSize: 13.sp,
            color: Color(0xff274FED),
          ),
        ),
      ],
    ),
  ),

  ShoppingModel(
    price: '295999',
    productName: 'Iphone Xs Max',
    productImage: 'assets/images/Iphone_image.png',
    widget: SvgPicture.asset('assets/svgs/ogabassey 1.svg'),
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


List<ShoppingModel> shoppingList2 = [
 

  ShoppingModel(
    price: '39780',
    productName: 'Anker Soundcore',
    productImage: 'assets/images/anker_main_image.png',
    widget: SvgPicture.asset('assets/svgs/Okay Fones 1.svg'),
  ),

  ShoppingModel(
    price: '490500',
    productName: 'iPhone 12 Pro',
    productImage: 'assets/images/Iphone12pro.png',
    widget: SvgPicture.asset('assets/svgs/ImateStore.svg'),
  ),

  ShoppingModel(
    price: '295999',
    productName: 'Iphone Xs Max',
    productImage: 'assets/images/Iphone_image.png',
    widget: Image.asset('assets/images/ogabassey 1.png'),
  ),
];

