import 'package:photogear_app/core/imports/app_imports.dart';

List<ItemModel> nearToYouList = [];

void generateNearToYouList() {
  List<ItemModel> combinedList = [
    ...lensesList,
    ...memoriesList,
    ...camerasList,
    ...bagsList,
    ...dronesList
  ];

  combinedList.shuffle(Random());

  // Let's assume we want to pick 10 items for the topRatedList
  int numberOfItems = min(combinedList.length, 10);
  nearToYouList = combinedList.take(numberOfItems).toList();
}