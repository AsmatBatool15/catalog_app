// ignore_for_file: deprecated_member_use

import 'package:catalog_app/core/store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
class AddToCart extends StatelessWidget{
  final Item catalog;
  AddToCart({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    VxState.listen(context, to: [AddMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
        shape: MaterialStateProperty.all(
          StadiumBorder(),
        ),
      ),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
