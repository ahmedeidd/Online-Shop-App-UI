import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/localization/language_constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      getTranslated(context, "cars_key"),
      getTranslated(context, "Jewellery_key"),
      getTranslated(context, "Dresses_key"),
      getTranslated(context, "cats_key"),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPaddin,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          selectedIndex == index ? kTextColor : kTextLightColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: MediaQuery.of(context).size.height * 0.003,
                    width: MediaQuery.of(context).size.width * 0.17,
                    color: selectedIndex == index
                        ? Colors.black
                        : Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
