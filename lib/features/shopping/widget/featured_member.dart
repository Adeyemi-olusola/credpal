import 'package:credpal_test/app/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedMember extends StatefulWidget {
  const FeaturedMember({super.key});

  @override
  State<FeaturedMember> createState() => _FeaturedMemberState();
}

class _FeaturedMemberState extends State<FeaturedMember> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Merchants',
                    style: AppTextStyles.headline1.copyWith(fontSize: 16.sp),
                  ),
                  Text(
                    'View all',
                    style: AppTextStyles.headline1.copyWith(
                      fontSize: 12.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 34.h),
            Wrap(
              spacing: 39.w,
              runSpacing: 30.h,
              children: List.generate(10, (index) => _buildMemberAvatar()),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMemberAvatar() {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(radius: 30.r, backgroundColor: Colors.blueGrey),
            Positioned(
              top: -2,
              right: 10,
              child: Container(
                width: 13.w,
                height: 13.h,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),

        Text(
          'Justrite',
          style: TextStyle(
            fontSize: 11.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: 'avenir',
          ),
        ),
      ],
    );
  }
}
