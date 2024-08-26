import 'package:photogear_app/core/imports/app_imports.dart';

class PaymentInfoCart extends StatelessWidget {
  const PaymentInfoCart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
  builder: (context, state) {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: Theme.of(context).colorScheme.secondary,
      radius: const Radius.circular(12),
      padding: const EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius:
        const BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: 150.h,
          padding: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).colorScheme.primaryContainer,
          child: Column(
            children: [
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${AppLocalizations.of(context)!.itemTotal}:',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                  ),
                  Text(
                    '${CartCubit.get(context).totalPrice.toStringAsFixed(2)} Jd',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp , fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              10.height,
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${AppLocalizations.of(context)!.deliveryFees}:',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                  ),
                  Text('${CartCubit.get(context).delivery} Jd',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                ],
              ),
              10.height,
              const Divider(),
              10.height,
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text('${AppLocalizations.of(context)!.total}:',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),),
                  Text(
                      '${CartCubit.get(context).total} Jd',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp,
                          fontWeight: FontWeight.bold ,
                          color: Theme.of(context).colorScheme.primary)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  },
);
  }
}
