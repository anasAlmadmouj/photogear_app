import 'package:photogear_app/core/imports/app_imports.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(const FavoriteState());

  static FavoriteCubit get(context) => BlocProvider.of(context);

  IconData favIcon = Icons.favorite_outline;
  Color favColor = Colors.grey;

  void addRemoveFavorite({
    required int index,
    required List<ItemModel> itemsList,
    required ItemModel itemModel,
  }) {
    itemsList[index] = ItemModel(
      typeCategory: itemModel.typeCategory,
      nameEn: itemModel.nameEn,
      image: itemModel.image,
      price: itemModel.price,
      id: itemModel.id,
      nameAr: itemModel.nameAr,
      descriptionEn: itemModel.descriptionEn,
      descriptionAr: itemModel.descriptionAr,
      isFav: itemModel.isFav ? false : true,
    );

    bool isAlreadyFav = favoriteList.any((item) => item.nameEn == itemsList[index].nameEn);

    if (!itemModel.isFav) {
      favoriteList.add(
        ItemModel(
          typeCategory: itemsList[index].typeCategory,
          id: favoriteList.length + 1,
          nameEn: itemsList[index].nameEn,
          image: itemsList[index].image,
          price: itemsList[index].price,
          nameAr: itemsList[index].nameAr,
          descriptionAr: itemsList[index].descriptionAr,
          descriptionEn: itemsList[index].descriptionEn,
          isFav: true,
        ),
      );
    } else if (itemModel.isFav && isAlreadyFav) {
      favoriteList.removeWhere((item) => item.nameEn == itemsList[index].nameEn);
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  void addRemoveFavoriteFromDetails({
    required ItemModel itemModel,
  }) {
    List<ItemModel> list;
    switch (itemModel.typeCategory) {
      case TypeCategory.lenses:
        list = lensesList;
        break;
      case TypeCategory.cameras:
        list = camerasList;
        break;
      case TypeCategory.bags:
        list = bagsList;
        break;
      case TypeCategory.drones:
        list = dronesList;
        break;
      default:
        list = memoriesList;
        break;
    }
    bool isAlreadyFav = favoriteList.any((item) => item.nameEn == itemModel.nameEn);
    if (!itemModel.isFav) {
      var matchingItem = list.firstWhere(
            (element) => element.nameEn == itemModel.nameEn,
      );

      if (matchingItem.id != -1) {
        matchingItem.isFav = false;
      }
      favoriteList.add(
        ItemModel(
          typeCategory: matchingItem.typeCategory,
          id: favoriteList.length + 1,
          nameEn: matchingItem.nameEn,
          image: matchingItem.image,
          price: matchingItem.price,
          nameAr: matchingItem.nameAr,
          descriptionAr: matchingItem.descriptionAr,
          descriptionEn: matchingItem.descriptionEn,
          isFav: true,
        ),
      );
    }
    else if (itemModel.isFav && isAlreadyFav) {
      print('دخلت ما');
      favoriteList.removeWhere((item) => item.nameEn == itemModel.nameEn);
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  void removeFromFavorite({required int index}) {
    ItemModel favItem = favoriteList[index];

    List<ItemModel> list=

    TypeCategory.getTypeList(favItem.typeCategory);

    var matchingItem = list.firstWhere(
          (element) => element.nameEn == favItem.nameEn,
    );

    if (matchingItem.id != -1) {
      matchingItem.isFav = false;
    }

    favoriteList.removeAt(index);
    emit(state.copyWith(requestState: RequestState.success,));
  }


}
