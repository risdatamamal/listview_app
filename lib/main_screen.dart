import 'package:flutter/material.dart';
import 'package:listview_app/detail_screen.dart';
import 'package:listview_app/product_navigation.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Navigation'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final ProductNavigation productNavigation =
              productNavigationList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(productNavigation: productNavigation);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Image.asset(productNavigation.imageAsset)),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            productNavigation.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(productNavigation.description),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Price: ' + productNavigation.price,
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 12.0),
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
                  )
                ],
              ),
            ),
          );
        },
        itemCount: productNavigationList.length,
      ),
    );
  }
}
