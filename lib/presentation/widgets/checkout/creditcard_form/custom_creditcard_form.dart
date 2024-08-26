import 'package:photogear_app/core/imports/app_imports.dart';

class CustomCreditCardForm extends StatelessWidget {
  const CustomCreditCardForm({super.key,});

  @override
  Widget build(BuildContext context) {
    PaymentCubit cubit = PaymentCubit.get(context);
    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CreditCardForm(
              formKey: cubit.visaFormKey,
              obscureCvv: true,
              obscureNumber: true,
              cardNumber: cubit.cardNumber,
              cvvCode: cubit.cvvCode,
              isHolderNameVisible: true,
              isCardNumberVisible: true,
              isExpiryDateVisible: true,
              cardHolderName: cubit.cardHolderName,
              expiryDate: cubit.expiryDate,
              themeColor: Colors.blue,
              textColor: Theme.of(context).colorScheme.onPrimary,
              cardHolderDecoration: InputDecoration(
                hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                // focusedBorder: border,
                // enabledBorder: border,
                prefixIcon: Icon(Icons.person , color: Theme.of(context).colorScheme.onPrimary,),
                labelText: AppLocalizations.of(context)!.cardHolder,
              ),
              cardNumberDecoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.cardNumber,
                hintText: 'XXXX XXXX XXXX XXXX',
                hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
              ),
              expiryDateDecoration: InputDecoration(
                prefixIcon: Icon(Icons.date_range_outlined , color: Theme.of(context).colorScheme.onPrimary,),
                hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                // focusedBorder: border,
                // enabledBorder: border,
                labelText: AppLocalizations.of(context)!.expiredDate,
                hintText: 'XX/XX',
              ),
              cvvCodeDecoration: InputDecoration(
                prefixIcon: Icon(Icons.lock , color: Theme.of(context).colorScheme.onPrimary,),
                hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                labelText: 'CVV',
                hintText: 'XXX',
              ), onCreditCardModelChange: cubit.onCreditCardModelChange,
              // onCreditCardModelChange: onCreditCardModelChange,
            ),
          ),
        );
      },
    );
  }
}
