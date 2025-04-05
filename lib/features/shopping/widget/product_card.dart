import 'package:credpal_test/features/shopping/model/shopping_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCardWidget extends StatefulWidget {
  final ShoppingModel shoppingItem;

  // Constructor with required parameter
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
    return Container(
      margin: EdgeInsets.only(right: 24.w),
      width: 161.w,
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 96.h,
                  width: 112.w,
                  decoration: BoxDecoration(
                    image: widget.shoppingItem.productImage != null
                        ? DecorationImage(
                            image: AssetImage(widget.shoppingItem.productImage!),
                      
                          )
                        : null,
                    color: Colors.grey[200], // Fallback color if no image
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 13.h),

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

                // Price and Old Price (Strikethrough)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${widget.shoppingItem.price}', // Display price
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    if (widget.shoppingItem.price != null) // If old price exists
                      Text(
                        '\$${widget.shoppingItem.price}',
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
          // Profile Image or Badge
          Positioned(
            top: 0,
            left: 0,
            child: CircleAvatar(
              radius: 25.r,
              backgroundColor: Colors.white,
              child: widget.shoppingItem.widget,
             
            ),
          ),
        ],
      ),
    );
  }
}
