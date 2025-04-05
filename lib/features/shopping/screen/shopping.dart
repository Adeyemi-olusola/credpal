import 'package:credpal_test/features/shopping/widget/featured_member.dart';
import 'package:credpal_test/features/shopping/widget/first_scroll_component.dart';
import 'package:credpal_test/features/shopping/widget/second_scroll_component.dart';
import 'package:credpal_test/features/shopping/widget/top_card_component.dart';
import 'package:credpal_test/shared/widget/textInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ShoppingTopComponent(),
            SizedBox(height: 20.w),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextInput(
                      prefixIcon: Container(
                        height: 8.w,
                        width: 8.w,

                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset(
                            'assets/svgs/search-normal.svg',
                            height: 8.w,
                            width: 8.w,
                          ),
                        ),
                      ),
                      hintText: 'Search for products or stores',
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    height: 45.w,
                    width: 45.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F5FE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset('assets/svgs/scan.svg'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),

            Container(
              padding: EdgeInsets.all(20.sp),
              decoration: BoxDecoration(color: Color(0xffF1F3FE)),

              child: Column(
                children: [
                  FirstScrollComponent(),
                  SizedBox(height: 26.w),
                  SecondScrollComponent(),
                ],
              ),
            ),

            SizedBox(height: 33.w),

            FeaturedMember(),
          ],
        ),
      ),
    );
  }
}
