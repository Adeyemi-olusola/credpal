import 'package:credpal_test/app/textStyle.dart';
import 'package:credpal_test/features/shopping/model/shopping_model.dart';
import 'package:credpal_test/features/shopping/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstScrollComponent extends StatelessWidget {
  FirstScrollComponent({super.key});
  List<ShoppingModel> shoppingLists = shoppingList;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Row(
          children: [
            ...List.generate(shoppingLists.length, (index) => ProductCardWidget(shoppingItem :shoppingLists[index])).toList(),
          ],
        ),
      ),
    );
  }
}
