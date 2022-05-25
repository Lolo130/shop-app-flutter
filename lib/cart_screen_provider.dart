
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'models/credit_card_model.dart';
import 'models/product.dart';

class CartscreenProvider extends ChangeNotifier with DiagnosticableTreeMixin {
  int _counter = 10;
  List<Product> _products = new List();
  List<CreditCardModel> _creditCards = [
    new CreditCardModel("4242 4242 4242 4242", "2020", "08", "156",
        "Laurent MONFOURNY", Colors.red),
    new CreditCardModel("4343 4343 4343 4343", "2020", "09", "254",
        "Gérard BERTRAND", Colors.blue),
  ];

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('b', _counter));
  }

  int get counter => _counter;

  set counter(int nb) {
    _counter = nb;
    notifyListeners();
  }

  void incrementCount() {
    counter = counter + 1;
  }

  void decrementCount() {
    counter = counter - 1;
  }

  List<Product> get products => _products;

  set products(List<Product> value) {
    _products = value;
  }

  List<CreditCardModel> get creditCards => _creditCards;

  set creditCards(List<CreditCardModel> value) {
    _creditCards = value;
  }

  double getUnpayed() {
    double price = 0.0;
    for (Product product in products) {
      price += product.price;
    }
    return price;
  }
}
