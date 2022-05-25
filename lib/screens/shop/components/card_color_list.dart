import 'package:eShop/app_properties.dart';
import 'package:eShop/screens/product/components/color_list.dart';
import 'package:flutter/material.dart';

class CardColorList extends StatefulWidget {
  final List<Color> colorList;

  CardColorList(this.colorList, {Key key}) : super(key: key);

  @override
  _CardColorListState createState() => _CardColorListState();
}

class _CardColorListState extends State<CardColorList> {
  int active;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.colorList.length,
              itemBuilder: (_, index) => InkWell(
                    onTap: (){
                      setState(() {
                        active = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0, vertical: 8.0),
                      child: Transform.scale(
                        scale: active == index ? 1.2 : 1,
                        child: ColorOption(widget.colorList[index]),
                      ),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}