import 'package:flutter/material.dart';
import 'CustomIcon.dart';

class ProductCard extends StatelessWidget {
  final cardColor;
  final String imgUrl;
  final String title;
  final String previousPrice;
  final String price;

  ProductCard(
      {this.cardColor,
      this.imgUrl,
      this.previousPrice,
      this.price,
      this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 15, right: 15),
        width: double.infinity,
        height: 320,
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Image.asset(
                imgUrl,
                width: 281,
                height: 191,
              ),
            ),
            Text(
              title,
              style: TextStyle(fontFamily: 'Raleway', fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(CustomIcons.favorite),
                    onPressed: () {},
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        previousPrice,
                        style: TextStyle(
                            color: Colors.pinkAccent, fontFamily: "Helvetica"),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        price,
                        style: TextStyle(fontSize: 30, fontFamily: "Helvetica"),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(CustomIcons.cart),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
