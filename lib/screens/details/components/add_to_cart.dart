import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/localization/language_constants.dart';
import 'package:online_shop_app_ui/models/product.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.2,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              border: Border.all(
                color: product.color,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: product.color,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    18,
                  ),
                ),
                color: product.color,
                onPressed: () {},
                child: Text(
                  getTranslated(context, "buy_now_key").toUpperCase(),
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
