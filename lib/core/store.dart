import 'package:catalog_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:catalog_app/models/cart.dart';


class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart; 

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}