import 'package:credpal_test/app/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingTopComponent extends StatefulWidget {
  const ShoppingTopComponent({super.key});

  @override
  State<ShoppingTopComponent> createState() => _ShoppingTopComponentState();
}

class _ShoppingTopComponentState extends State<ShoppingTopComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffD0DAFF),
      padding: EdgeInsets.only(
        left: 20.w,
        right: 16.w,
        top: 62.h,
        bottom: 43.h,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Pay later \neverywhere',
                    style: AppTextStyles.bodyText1.copyWith(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Shopping limit: ',
                    style: AppTextStyles.bodyText1.copyWith(
                      fontSize: 12.sp,
                      color:Colors.black,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    height: 37.h,
                    width: 134.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        'Activate Credit',
                        style: AppTextStyles.bodyText1.copyWith(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
