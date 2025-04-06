import 'package:credpal_test/app/textStyle.dart';
import 'package:credpal_test/features/shopping/model/shopping_model.dart';
import 'package:credpal_test/features/shopping/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondScrollComponent extends StatelessWidget {
  SecondScrollComponent({super.key});
  List<ShoppingModel> shoppingLists = shoppingList2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Row(
          children: [
            ...List.generate(
              shoppingLists.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: ProductCardWidget(shoppingItem: shoppingLists[index]),
              ),
            ).toList(),
          ],
        ),
      ),
    );
  }
}
