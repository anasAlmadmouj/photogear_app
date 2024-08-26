import 'package:photogear_app/core/imports/app_imports.dart';

class ItemModel {
  int id;
  TypeCategory typeCategory;
  String nameEn;
  String nameAr;
  String descriptionEn;
  String descriptionAr;
  String image;
  double price;
  bool isFav;

  ItemModel({
    required this.typeCategory,
    required this.nameEn,
    required this.image,
    required this.price,
    required this.id,
    required this.isFav,
    required this.descriptionAr,
    required this.descriptionEn,
    required this.nameAr,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'typeCategory': typeCategory.toString().split('.').last,
      'nameEn': nameEn,
      'nameAr': nameAr,
      'descriptionEn': descriptionEn,
      'descriptionAr': descriptionAr,
      'image': image,
      'price': price,
      'isFav': isFav,
    };
  }
  String getName(BuildContext context){
    if( Localizations.localeOf(context).languageCode == 'ar'){
      return nameAr??"";}
    else{
      return nameEn??"";
    }
  }
  String getDescription(BuildContext context){
    if( Localizations.localeOf(context).languageCode == 'ar'){
      return descriptionAr??"";}
    else{
      return descriptionEn??"";
    }
  }
  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'],
      typeCategory: TypeCategory.values.firstWhere((e) => e.toString().split('.').last == json['typeCategory']),
      nameEn: json['nameEn'],
      nameAr: json['nameAr'],
      descriptionEn: json['descriptionEn'],
      descriptionAr: json['descriptionAr'],
      image: json['image'],
      price: json['price'],
      isFav: json['isFav'],
    );
  }
}
