import 'package:photogear_app/core/imports/app_imports.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(AppLocalizations.of(context)!.deliveryAddress , style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20.sp),),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                maybePop(context);
              },),
            pinned: true,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          ),
          SliverSizedBox(size: 10.height),
          const DeliveryAddressContainer(),
          SliverSizedBox(size: 20.height),

          const PromoCodeContainer(),
          SliverSizedBox(size: 20.height),

          const PayWithContainer(),
          SliverSizedBox(size: 20.height),

          const SliverToBoxAdapter(child: Padding(
            padding: EdgeInsets.all(16.0),
            child: PaymentInfoCart(),
          )),
          SliverSizedBox(size: 20.height),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomElevatedButton(
                backGroundColor: Theme.of(context).colorScheme.primary,
                function: (){
                  if (PaymentCubit.get(context).payRadioValue == 'debit') {
                    PaymentCubit.get(context).paymentClear();
                    CartCubit.get(context).clearCart();
                    navigateTo(context, const AddVisaCardScreen());
                  }
                  else {
                    for (int index = 0 ; index < cartList.length; index++){
                      CartCubit.get(context).addToMyHistory(index: index);
                    }
                    cartList.clear();
                    PaymentCubit.get(context).paymentClear();
                    CartCubit.get(context).clearCart();
                    navigateToAndRemoveUntil(context, const DoneScreen());
                  }
                },
                text: AppLocalizations.of(context)!.checkout,
              ),
            ),
          )
        ],
      ),
    );
  }
}




