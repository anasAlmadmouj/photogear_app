import 'package:photogear_app/core/imports/app_imports.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState());

  static CartCubit get(context) => BlocProvider.of(context);

  double totalPrice = 0;
  double delivery = 5;
  double total = 0;

  void clearCart(){
    totalPrice = 0;
    delivery = 5;
    total = 0;
    emit(state.copyWith(requestState: RequestState.success));
  }

  addToMyCart({
    required ItemModel itemModel,
    required int number,
    required BuildContext context
  }) {
    bool isAlready = cartList.any((item) => item.nameEn == itemModel.nameEn);
    AppCubit.get(context).showSnackBar(
        context: context,
        title: AppLocalizations.of(context)!.addToCartMessage,
        colorState: ColorState.success);
    if (isAlready) {
      for (var element in cartList) {
        if (element.nameEn == itemModel.nameEn) {
          element.itemQuantity = element.itemQuantity + 1;
        }
      }
    }
    else {
      cartList.add(
        CartModel(
          itemQuantity: number,
          nameEn: itemModel.nameEn,
          nameAr: itemModel.nameAr,
          image: itemModel.image,
          price: itemModel.price,
          id: cartList.length + 1,
        ),
      );
    }
    totalPrice = totalPrice + itemModel.price;
    total = totalPrice + delivery;
    emit(state.copyWith(requestState: RequestState.success));
  }

  counterPlusMyCart({required index, required CartModel cart}) {
    cartList[index] = CartModel(
      nameAr: cart.nameAr,
      id: cart.id,
      nameEn: cart.nameEn,
      image: cart.image,
      price: cart.price,
      itemQuantity: cart.itemQuantity + 1,);
    totalPrice = totalPrice + cart.price;
    total = totalPrice + delivery;
    emit(state.copyWith(requestState: RequestState.success));
  }

  counterMinusMyCart({
    required int index,
    required CartModel cart,
    required BuildContext context,
  }) {
    if (cart.itemQuantity != 1) {
      cartList[index] = CartModel(
        nameAr: cart.nameAr,
        id: cart.id,
        nameEn: cart.nameEn,
        image: cart.image,
        price: cart.price,
        itemQuantity: cart.itemQuantity - 1,
      );
      totalPrice = totalPrice - cart.price;
      total = totalPrice + delivery;
      emit(state.copyWith(requestState: RequestState.success));
    }
    else {
      showCustomDropDownDialog(
          context: context,
          content: AppLocalizations.of(context)!.removeMessage,
          title: AppLocalizations.of(context)!.removeTitle,
          textAction: AppLocalizations.of(context)!.remove,
          onPressedAction: () {
            removeFromCart(
              index: index,
              price: cart.price,
              itemQuantity: cart.itemQuantity,
            );
            Navigator.of(context).pop(); // Dismiss the dialog after removing
          });
    }
  }

  void removeFromCart(
      {required int index, required double price, required int itemQuantity}) {
    cartList.removeAt(index);
    totalPrice = totalPrice - (price * itemQuantity);
    total = totalPrice + delivery;
    emit(state.copyWith(requestState: RequestState.success));
  }

  Future<void> addToMyHistory({required int index}) async{
    historyList.add(cartList[index]);
  }
}
