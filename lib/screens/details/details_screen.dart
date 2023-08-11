import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/screens/details/components/body.dart';
import 'package:furniture_app/utils/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset('assets/icons/back.svg'),
      ),
      centerTitle: false,
      title: Text(
        'Back'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
        ),
      ],
    );
  }
}
