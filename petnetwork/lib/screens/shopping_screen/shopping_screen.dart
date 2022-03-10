import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:petnetwork/redux/redux_state.dart';
import 'package:petnetwork/screens/shopping_screen/components/categories.dart';
import 'package:petnetwork/screens/shopping_screen/components/discount_banner.dart';
import 'package:petnetwork/screens/shopping_screen/components/home_header.dart';
import 'package:petnetwork/screens/shopping_screen/components/popular_product.dart';
import 'package:petnetwork/screens/shopping_screen/components/special_offers.dart';
import 'package:petnetwork/widgets/commons.dart';
import 'package:petnetwork/widgets/custom_text.dart';
import 'package:petnetwork/widgets/size_config.dart';

import 'components/shopping_screen_title.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({Key key}) : super(key: key);

  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<ShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
