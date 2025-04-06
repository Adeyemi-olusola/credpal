import 'package:credpal_test/features/shopping/model/shopping_model.dart';
import 'package:credpal_test/shared/utils/amount_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCardWidget extends StatefulWidget {
  final ShoppingModel shoppingItem;

  const ProductCardWidget({super.key, required this.shoppingItem});

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(child: _productCard(context));
  }

  Widget _productCard(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 161.w,
          height: 174.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(
                  0.05,
                ), 
                offset: Offset(0, 4), 
                blurRadius: 10, 
                spreadRadius: 0, 
              ),
            ],
          ),
        ),
        Container(
          width: 161.w,
          height: 174.h,

          child: Image.asset(widget.shoppingItem.productImage!),
        ),
        Container(
          width: 161.w,
          height: 174.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(6),
                child: Container(
                  height: 50.w, 
                  width: 50.w,
                  padding: EdgeInsets.all(5.sp),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                     color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 4),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: widget.shoppingItem.widget,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Name
                    Text(
                      widget.shoppingItem.productName.toString(),
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Avenir',
                      ),
                    ),
                    SizedBox(height: 8.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          formatToNaira(widget.shoppingItem.price.toString()),
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w800,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        if (widget.shoppingItem.price !=
                            null) 
                          Text(
                          formatToNaira(widget.shoppingItem.price.toString()),
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Color(0xffB3B3CC),
                              decorationThickness: 1,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffB3B3CC),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
