import 'dart:convert';

import 'package:photogear_app/core/imports/app_imports.dart';

class CartModel {
  int id;
  String nameEn;
  String nameAr;
  String image;
  double price;
  int itemQuantity;

  CartModel({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.image,
    required this.price,
    required this.itemQuantity,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'nameEn': nameEn,
    'nameAr': nameAr,
    'image': image,
    'price': price,
    'itemQuantity': itemQuantity,
  };
  String getName(BuildContext context){
    if( Localizations.localeOf(context).languageCode == 'ar'){
      return nameAr??"";}
    else{
      return nameEn??"";
    }
  }
  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
    id: json['id'],
    nameEn: json['nameEn'],
    nameAr: json['nameAr'],
    image: json['image'],
    price: json['price'],
    itemQuantity: json['itemQuantity'],
  );
}
List<CartModel> cartList = [];