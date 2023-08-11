import 'package:flutter/material.dart';
import 'package:furniture_app/screens/details/components/product_image.dart';
import 'package:furniture_app/utils/constants.dart';
import '../../../models/product.dart';
import 'chat_and_add_to_cart.dart';
import 'list_of_colors.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Hero(
                      tag: '${product.id}',
                      child: ProductPoster(
                        size: size,
                        image: product.image,
                      ),
                    ),
                  ),
                  const ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding / 2,
                    ),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.description,
                      style: const TextStyle(color: kTextLightColor),
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
            const ChatAndAddToCart(),
          ],
        ),
      ),
    );
  }
}
