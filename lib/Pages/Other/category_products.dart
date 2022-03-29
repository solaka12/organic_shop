// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:organic_shop/Auth/checkout_navigator.dart';
import 'package:organic_shop/Locale/locales.dart';
import 'package:organic_shop/Pages/Search/cart.dart';
import 'package:organic_shop/Pages/Search/search_result.dart';
import 'package:organic_shop/Pages/User/wishlist.dart';
import 'package:organic_shop/Theme/colors.dart';

class Product {
  Product(this.image, this.productName, this.productType, this.price);
  String image;
  String productName;
  String productType;
  String price;
}

class CategoryProduct extends StatefulWidget {
  final String title;

  CategoryProduct(this.title);

  @override
  _CategoryProductState createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    List<Product> products = [
      Product("assets/ProductImages/onion.png", (locale?.freshRedOnios)!,
          "Pajeroma", "\$30.0"),
      Product("assets/ProductImages/tomato.png", (locale?.freshRedTomatoes)!,
          "Lecoil Eeva", "\$44.0"),
      Product("assets/ProductImages/Potatoes.png", (locale?.mediumPotatoes)!,
          "Pajeroma", "\$29.0"),
      Product("assets/ProductImages/lady finger.png", (locale?.freshLadiesFinger)!,
          "Operum England", "\$32.0"),
      Product("assets/ProductImages/Garlic.png", (locale?.freshGarlic)!, "Pajeroma",
          "\$30.0"),
      Product("assets/ProductImages/Cauliflower.png", (locale?.cauliFlower)!,
          "Calvis Dino", "\$35.0"),
      Product("assets/ProductImages/lady finger.png", (locale?.freshLadiesFinger)!,
          "Operum England", "\$32.0"),
      Product("assets/ProductImages/Garlic.png", (locale?.freshGarlic)!, "Pajeroma",
          "\$30.0"),
      Product("assets/ProductImages/Cauliflower.png", (locale?.cauliFlower)!,
          "Calvis Dino", "\$35.0"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: kMainTextColor),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: ImageIcon(AssetImage(
              'assets/ic_cart.png',
            )),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CheckOutNavigator()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: buildGridView(products),
      ),
    );
  }
}
