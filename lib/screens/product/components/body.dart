import 'package:flutter/material.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/screens/details/details_screen.dart';
import 'package:furniture_app/screens/product/components/product_card.dart';
import 'package:furniture_app/utils/constants.dart';

import '../../../components/search_box.dart';

import 'category_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(onChanged: (value) {}),
        const CategoryList(),
        const SizedBox(height: kDefaultPadding / 2),
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
              ),
              ListView.builder(
                itemBuilder: (context, index) => ProductCard(
                  itemIndex: index,
                  product: products[index],
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailsScreen(),
                        ));
                  },
                ),
                itemCount: products.length,
              )
            ],
          ),
        ),
      ],
    );
  }
}
