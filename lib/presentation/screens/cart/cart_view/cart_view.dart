import 'package:photogear_app/core/image_assets/image_assets.dart';
import 'package:photogear_app/core/imports/app_imports.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(builder: (context, state) {
      return cartList.isEmpty
          ? EmptyScreenWidget(
        image: ImageAssets.cartEmpty,
        titleEmpty: AppLocalizations.of(context)!.cartEmpty,
        message: AppLocalizations.of(context)!.cartEmptyMessage,
      )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 18),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        CartModel item = cartList[index];
                        return DimissableItem(
                          item: item,
                          index: index,
                          onDismissed: (dismissDirection){
                            CartCubit.get(context).removeFromCart(
                                index: index,
                                price: cartList[index].price,
                                itemQuantity: cartList[index].itemQuantity);
                          },
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: cartList.length,
                    ),
                  ),
                  const PaymentInfoCart(),
                  20.height,
                  CustomElevatedButton(
                      backGroundColor: Theme.of(context).colorScheme.primary,
                      text: AppLocalizations.of(context)!.checkout,
                      function: () {
                        navigateTo(context, const CheckoutScreen());
                      }),
                ],
              ),
            );
    });
  }
}
