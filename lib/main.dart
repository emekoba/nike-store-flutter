import 'package:flutter/material.dart';
import 'package:nike_store/CustomIcon.dart';
import 'ProductCard.dart';

//CREATED BY RUSSELL J EMEKOBA and CO.......

void main() => runApp(MaterialApp(
      home: Store(),
      debugShowCheckedModeBanner: false,
    ));

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  List<Widget> navIcons = [
    Image.asset("assets/store.png", width: 30, height: 30),
    Icon(
      CustomIcons.search,
      size: 28,
    ),
    Icon(CustomIcons.favorite, size: 28),
    Icon(CustomIcons.cart, size: 28),
    Image.asset('assets/profile.png', height: 35, width: 35)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'assets/logo.png',
              height: 30,
              width: 30,
            ),
          ),
        ),
        body: ListView(children: [
          ProductCard(
            cardColor: Colors.amberAccent[100],
            imgUrl: "assets/shoes_01.png",
            previousPrice: "\$999.0",
            price: "\$749",
            title: "Hybrid Rocket WNS",
          ),
          ProductCard(
            cardColor: Colors.lightBlueAccent[100],
            imgUrl: "assets/shoes_02.png",
            previousPrice: "\$699.0",
            price: "\$599",
            title: "Hybrid Runner ARS",
          ),
          ProductCard(
            cardColor: Colors.redAccent[100],
            imgUrl: "assets/shoes_01.png",
            previousPrice: "\$699.0",
            price: "\$599",
            title: "Hybrid Runner ARS",
          ),
        ]),
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(color: Colors.grey[200], boxShadow: [
            BoxShadow(
                color: Colors.black12.withOpacity(0.065),
                offset: Offset(0, -3),
                blurRadius: 10),
          ]),
          child: Row(
            children: navIcons.map((icon) {
              return Expanded(
                  child: GestureDetector(
                onTap: () {},
                child: icon,
                behavior: HitTestBehavior.translucent,
              ));
            }).toList(),
          ),
        ));
  }
}
