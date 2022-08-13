import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(right: defaultPadding),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: product.color)),
            child: IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: product.color,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
                                        child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                color: product.color,
                onPressed: () {},
                child: Text("Buy Now".toUpperCase(),style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: Colors.white ),),
                
              ),
            ),
          )
        ],
      ),
    );
  }
}
