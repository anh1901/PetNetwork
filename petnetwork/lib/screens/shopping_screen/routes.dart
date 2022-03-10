import 'package:flutter/widgets.dart';
import 'package:petnetwork/screens/cart/cart_screen.dart';
import 'package:petnetwork/screens/details/details_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),

};
