import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/models/product.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({
    Key key,
    this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPaddin,
      ),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
