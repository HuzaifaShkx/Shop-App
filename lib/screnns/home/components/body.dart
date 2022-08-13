import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants.dart';
import '../../../model/product.dart';
import '../../deatail/details_screen.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Women"
            .text
            .xl4
            .bold
            .make()
            .pOnly(left: defaultPadding, right: defaultPadding),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: defaultPadding,
                  crossAxisSpacing: defaultPadding),
              itemBuilder: (context, index) => ItemCard(
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              product: products[index],
                            ))),
                product: products[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
