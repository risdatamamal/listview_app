import 'package:flutter/material.dart';

class ProductNavigation {
  String name;
  String description;
  String imageAsset;
  String price;
  Icon icons;

  ProductNavigation(
      {this.name, this.description, this.imageAsset, this.price, this.icons});
}

var productNavigationList = [
  ProductNavigation(
    name: 'Pixel',
    description: 'Pixel is the most featureful phone ever',
    imageAsset: 'images/pixel.jpg',
    price: '800',
    icons: Icon(
      Icons.star_border,
      color: Colors.red,
    ),
  ),
  ProductNavigation(
    name: 'Laptop',
    description: 'Laptop is most productive development tool',
    imageAsset: 'images/laptop.jpg',
    price: '2000',
    icons: Icon(
      Icons.star_border,
      color: Colors.red,
    ),
  ),
  ProductNavigation(
    name: 'Tablet',
    description: 'Tablet is most useful device ever for meeting',
    imageAsset: 'images/tablet.jpg',
    price: '1500',
    icons: Icon(
      Icons.star,
      color: Colors.red,
    ),
  ),
  ProductNavigation(
    name: 'Pendrive',
    description: 'iPhone is the stylist phone ever',
    imageAsset: 'images/pendrive.jpg',
    price: '100',
    icons: Icon(
      Icons.star_border,
      color: Colors.red,
    ),
  ),
];
