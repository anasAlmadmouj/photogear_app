import 'package:photogear_app/core/imports/app_imports.dart';

class PayWithContainer extends StatelessWidget {
  const PayWithContainer({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentCubit cubit = PaymentCubit.get(context);
    return BlocBuilder<PaymentCubit, PaymentState>(
  builder: (context, state) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.payWith,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),),
            RadioListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.card_giftcard,
                    color: Colors.blue,
                  ),
                  15.width, Text("Debit / Credit Card" , style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),),
                ],
              ),
              value: "debit",
              groupValue: cubit.payRadioValue,
              onChanged: (newVal) {
                cubit.changeRadioPayValue(newVal , context);
              },
            ),
            RadioListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.money,
                    color: Colors.green,
                  ),
                  15.width,
                  Text("Cash On Delivery" , style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp)),
                ],
              ),
              value: "cash",
              groupValue: cubit.payRadioValue,
              onChanged: (newVal) {
                cubit.changeRadioPayValue(newVal , context);
              },
            ),
          ],
        ),
      ),
    );
  },
);
  }
}
