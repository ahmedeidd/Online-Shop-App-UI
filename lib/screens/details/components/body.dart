import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/models/product.dart';
import 'package:online_shop_app_ui/screens/details/components/add_to_cart.dart';
import 'package:online_shop_app_ui/screens/details/components/color_and_size.dart';
import 'package:online_shop_app_ui/screens/details/components/counter_with_favourite_btn.dart';
import 'package:online_shop_app_ui/screens/details/components/description.dart';
import 'package:online_shop_app_ui/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, this.product}) : super(key: key);
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
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(
                        product: product,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Description(
                        product: product,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CounterWithFavouriteBtn(),
                      SizedBox(
                        height: 10,
                      ),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
