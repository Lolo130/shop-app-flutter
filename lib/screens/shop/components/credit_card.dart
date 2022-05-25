import 'package:eShop/models/credit_card_model.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final CreditCardModel creditCardModel;

  CreditCard(this.creditCardModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 250,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: creditCardModel.colorHolder,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'CREDIT CARD',
            style: TextStyle(color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                creditCardModel.cardNumber,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                creditCardModel.month + "/" + creditCardModel.year,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                creditCardModel.cvc,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
//              Text(
//                'Name',
//                style: TextStyle(color: Colors.grey),
//              ),
              Text(
                creditCardModel.cardHolder,
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
