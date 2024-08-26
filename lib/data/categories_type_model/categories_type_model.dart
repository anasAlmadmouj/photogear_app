import 'package:photogear_app/core/imports/app_imports.dart';

class CategoriesTypeModel {
  String nameEn;
  String nameAr;
  String image;

  CategoriesTypeModel({
    required this.nameEn,
    required this.nameAr,
    required this.image,
  });

  Map<String, dynamic> toJson() => {
    'nameEn': nameEn,
    'nameAr': nameAr,
    'image': image,
  };

  String getName(BuildContext context){
    if( Localizations.localeOf(context).languageCode == 'ar'){
      return nameAr??"";}
    else{
      return nameEn??"";
    }
  }
  factory CategoriesTypeModel.fromJson(Map<String, dynamic> json) => CategoriesTypeModel(
    nameEn: json['nameEn'],
    nameAr: json['nameAr'],
    image: json['image'],
  );
}
List<CategoriesTypeModel> categoriesList = [
  CategoriesTypeModel(nameEn: 'Cameras', nameAr: 'كاميرات', image: ImageAssets.cameras),
  CategoriesTypeModel(nameEn: 'Lenses', nameAr: 'عدسات', image: ImageAssets.lenses),
  CategoriesTypeModel(nameEn: 'Memories', nameAr: 'ذواكر', image: ImageAssets.memories),
  CategoriesTypeModel(nameEn: 'Bags', nameAr: 'حقائب', image: ImageAssets.bags),
  CategoriesTypeModel(nameEn: 'Drones', nameAr: 'درون', image: ImageAssets.drones),
];


