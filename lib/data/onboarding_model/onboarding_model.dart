import 'package:photogear_app/core/imports/app_imports.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String details;

  OnBoardingModel({required this.image, required this.title, required this.details});
}

List<OnBoardingModel> getOnBoardingList(BuildContext context) {
  return [
    OnBoardingModel(
      image: ImageAssets.homeOnBoarding,  // Path to your first screenshot
      title: AppLocalizations.of(context)!.homeOnBoardingTitle,
      details: AppLocalizations.of(context)!.homeOnBoardingDetails,
    ),
    OnBoardingModel(
      image: ImageAssets.profileOnBoarding,  // Path to your second screenshot
      title: AppLocalizations.of(context)!.profileOnBoardingTitle,
      details: AppLocalizations.of(context)!.profileOnBoardingDetails,
    ),
    OnBoardingModel(
      image: ImageAssets.checkoutOnBoarding,  // Path to your third screenshot
      title: AppLocalizations.of(context)!.checkoutOnBoardingTitle,
      details: AppLocalizations.of(context)!.checkoutOnBoardingDetails,
    ),
    OnBoardingModel(
      image: ImageAssets.trackingOnBoarding,  // Path to your fourth screenshot
      title: AppLocalizations.of(context)!.trackingOnBoardingTitle,
      details: AppLocalizations.of(context)!.trackingOnBoardingDetails,
    ),
  ];
}
