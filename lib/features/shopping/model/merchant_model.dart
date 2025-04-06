import 'package:credpal_test/app/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MerchantModel {
  String? productName;

  String? productImage;
  bool? isActive;

  MerchantModel({this.productName, this.productImage, this.isActive});
}

List<MerchantModel> merchantList = [
  MerchantModel(
    productImage: 'assets/images/merchant_images/justrite.png',
    productName: 'Justrite',
    isActive: true,
  ),
  MerchantModel(
    productImage: 'assets/images/merchant_images/orile.png',
    productName: 'Orile Restaurent',
    isActive: true,
  ),
  MerchantModel(
    productImage: 'assets/images/merchant_images/slot.png',
    productName: 'Slot',
    isActive: true,
  ),
  MerchantModel(
    productImage: 'assets/images/merchant_images/pointek.png',
    productName: 'Pointek',
    isActive: true,
  ),
  MerchantModel(
    productImage: 'assets/images/merchant_images/ogabassey.png',
    productName: 'ogabassey',
    isActive: true,
  ),
  MerchantModel(
    productImage: 'assets/svgs/merchants_icon/pointek.svg',
    productName: 'Casper Stores',
    isActive: false,
  ),
  MerchantModel(
    productImage: 'assets/images/merchant_images/dreamwork.png',
    productName: 'Dreamworks',
    isActive: false,
  ),

  MerchantModel(
    productImage: 'assets/images/merchant_images/hubmart.png',
    productName: 'Hubmart',
    isActive: true,
  ),
  MerchantModel(
    productImage: 'assets/images/merchant_images/justused.png',
    productName: 'Just Used',
    isActive: true,
  ),

  MerchantModel(
    productImage: 'assets/images/merchant_images/just_fones.png',
    productName: 'Just fones',
    isActive: true,
  ),
];
