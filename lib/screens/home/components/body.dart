import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/localization/language_constants.dart';
import 'package:online_shop_app_ui/models/product.dart';
import 'package:online_shop_app_ui/screens/details/details_screen.dart';
import 'package:online_shop_app_ui/screens/home/components/categories.dart';
import 'package:online_shop_app_ui/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String dummyText = getTranslated(context, 'description_key');
    List<Product> products = [
      Product(
        id: 1,
        title: getTranslated(context, 'car_1_key'),
        price: 234000,
        size: 12,
        description: dummyText,
        image: "assets/images/car_1.png",
        color: Colors.yellow[800],
      ),
      Product(
        id: 2,
        title: getTranslated(context, 'car_2_key'),
        price: 233000,
        size: 8,
        description: dummyText,
        image: "assets/images/car_2.png",
        color: Colors.redAccent,
      ),
      Product(
        id: 3,
        title: getTranslated(context, 'car_3_key'),
        price: 444000,
        size: 10,
        description: dummyText,
        image: "assets/images/car_3.png",
        color: Colors.blue,
      ),
      Product(
        id: 4,
        title: getTranslated(context, 'car_4_key'),
        price: 234000,
        size: 11,
        description: dummyText,
        image: "assets/images/car_4.png",
        color: Color(0xFFAEAEAE),
      ),
      Product(
        id: 5,
        title: getTranslated(context, 'car_5_key'),
        price: 222000,
        size: 12,
        description: dummyText,
        image: "assets/images/car_5.png",
        color: Color(0xFFAEAEAE),
      ),
      Product(
        id: 6,
        title: getTranslated(context, 'car_6_key'),
        price: 200000,
        size: 12,
        description: dummyText,
        image: "assets/images/car_6.png",
        color: Color(0xFFAEAEAE),
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            getTranslated(context, 'cars_key'),
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                return ItemCard(
                  product: products[index],
                  press: () {
                    return Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailsScreen(
                          product: products[index],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
