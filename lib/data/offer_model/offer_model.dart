import 'package:photogear_app/core/image_assets/image_assets.dart';

import '../../core/imports/app_imports.dart';

class OffersModel {
  final int id;
  final String backgroundImage;
  final String discount;
  final String offerInfo;
  final Color colorBackground;

  OffersModel({
    required this.backgroundImage,
    required this.discount,
    required this.offerInfo,
    required this.id,
    required this.colorBackground,
  });
}

List<OffersModel> offersList = [
  OffersModel(
    id: 1,
    colorBackground: const Color(0xFF4A90E2), // A calm blue
    backgroundImage: ImageAssets.drones3,
    discount: '15%',
    offerInfo: 'Fly High \n with Our Drones!',
  ),
  OffersModel(
    id: 2,
    colorBackground: const Color(0xFFFFA726), // Vibrant orange
    backgroundImage: ImageAssets.canon1,
    discount: '20%',
    offerInfo: 'Capture Moments \n with Canon!',
  ),
  OffersModel(
    id: 3,
    colorBackground: const Color(0xFF8BC34A), // Fresh green
    backgroundImage: ImageAssets.bags1,
    discount: '10%',
    offerInfo: 'Travel Light \n with Our Bags!',
  ),
  OffersModel(
    id: 4,
    colorBackground: const Color(0xFFEC407A), // Bold pink
    backgroundImage: ImageAssets.sonyLens1,
    discount: '35%',
    offerInfo: 'Focus on Quality \n with Sony Lenses!',
  ),
];
