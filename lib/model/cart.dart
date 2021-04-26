import 'package:ecommerce_mobile_app/model/cart_item.dart';
import 'package:ecommerce_mobile_app/model/product_model.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier {
  Map<String, Product> _items = {};

  int get count {
    return _items.length;
  }

  Map<String, Product> get items {
    return {..._items};
  }

  void addItem(String image, double price, String title, String productId,
      ) {
    _items.putIfAbsent(
        productId,
        () => Product(
              image: image,
              price: price,
              title: title,
            ));
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

}
