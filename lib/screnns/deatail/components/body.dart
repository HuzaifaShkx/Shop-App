import 'package:flutter/material.dart';
import 'package:shop_app/screnns/deatail/components/product_title_img.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants.dart';
import '../../../model/product.dart';
import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: defaultPadding,
                      right: defaultPadding),
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  // height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: defaultPadding/2,),
                      Description(product: product),
                      SizedBox(height: defaultPadding/2,),
                      CounterWithFavBtn(),
                      SizedBox(height: defaultPadding/2,),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleImg(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
