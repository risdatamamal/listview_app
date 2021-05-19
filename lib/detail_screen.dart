import 'package:flutter/material.dart';
import 'package:listview_app/product_navigation.dart';

class DetailScreen extends StatelessWidget {
  final ProductNavigation productNavigation;

  DetailScreen({@required this.productNavigation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productNavigation.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(productNavigation.imageAsset),
            Container(
              margin: EdgeInsets.only(top: 36),
              child: Text(
                productNavigation.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 36),
              child: Text(
                productNavigation.description,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 36),
              child: Text(
                'Price: ' + productNavigation.price,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 36.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[productNavigation.icons],
                  ),
                  Column(
                    children: <Widget>[productNavigation.icons],
                  ),
                  Column(
                    children: <Widget>[productNavigation.icons],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
