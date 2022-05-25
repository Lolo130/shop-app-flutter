import 'package:eShop/screens/profile_page.dart';
import 'package:eShop/screens/shop/check_out_page.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final TabController controller;

  const CustomBottomBar({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              controller.animateTo(0);
            },
          ),
//          IconButton(
//            icon: Image.asset('assets/icons/category_icon.png'),
//            onPressed: () {
//              controller.animateTo(1);
//            },
//          ),
          IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: () {
//              controller.animateTo(1);
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => CheckOutPage()));
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              controller.animateTo(2);
            },
          )
        ],
      ),
    );
  }
}
