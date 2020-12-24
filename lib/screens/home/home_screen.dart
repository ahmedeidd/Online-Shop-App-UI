import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/localization/language_constants.dart';
import 'package:online_shop_app_ui/main.dart';
import 'package:online_shop_app_ui/models/language.dart';
import 'components/body.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);
    MyApp.setLocale(context, _locale);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          appBar: buildAppBar(),
          body: Body(),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<Language>(
            underline: SizedBox(),
            icon: Icon(
              Icons.language,
              color: Colors.black,
            ),
            items: Language.languageList()
                .map<DropdownMenuItem<Language>>(
                  (e) => DropdownMenuItem<Language>(
                    value: e,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          e.flag,
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(e.name)
                      ],
                    ),
                  ),
                )
                .toList(),
            onChanged: (Language language) {
              _changeLanguage(language);
            },
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.search,
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
