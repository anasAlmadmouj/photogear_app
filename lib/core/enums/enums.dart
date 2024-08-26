import '../imports/app_imports.dart';

enum TitleItemWidget{
  icon,
  text,
}
enum RequestState{
  loading,
  success,
  error,
}
enum TypeCategory{
  cameras,
  drones,
  lenses,
  memories,
  bags;

  static List<ItemModel> getTypeList(TypeCategory typeCategory){

  switch (typeCategory) {
    case TypeCategory.lenses:
      return  lensesList;
      break;
    case TypeCategory.cameras:
      return camerasList;
      break;
    case TypeCategory.bags:
      return bagsList;
      break;
    case TypeCategory.drones:
      return dronesList;
      break;
    default:
      return memoriesList;
      break;
  }
}
}
enum ColorState{
  success,
  error,
}
Color chooseSnackColor(ColorState state , BuildContext context) {
  Color color;
  switch (state) {
    case ColorState.success:
      color = Theme.of(context).colorScheme.secondary;
      break;
    case ColorState.error:
      color = MyColors.redColor;
      break;
    default:
      return Colors.amber;
  }
  return color;
}