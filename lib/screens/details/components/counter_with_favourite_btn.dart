import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/screens/details/components/cart_counter.dart';

class CounterWithFavouriteBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.all(5),
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
