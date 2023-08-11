import 'package:flutter/material.dart';
import 'package:furniture_app/screens/details/components/product_image.dart';
import 'package:furniture_app/utils/constants.dart';

import 'colors_dots.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              ProductPoster(
                size: size,
                image: 'assets/images/Item_2.png',
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(fillColor: Color(0xFF80989A), isSelected: true),
                    ColorDot(fillColor: Color(0xFFFF5200)),
                    ColorDot(fillColor: kPrimaryColor),
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
