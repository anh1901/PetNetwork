import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:petnetwork/screens/cart/cart_screen.dart';
import 'package:petnetwork/widgets/size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () => Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.bottomToTop, child: CartScreen())),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 5,
            press: () {
              //code
            },
          ),
        ],
      ),
    );
  }
}
