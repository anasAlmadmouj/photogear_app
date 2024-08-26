import 'package:photogear_app/core/imports/app_imports.dart';

class CustomCreditCardWidget extends StatelessWidget {
  const CustomCreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        PaymentCubit cubit = PaymentCubit.get(context);
        return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CreditCardWidget(
              cardBgColor: MyColors.black,
              cardType: CardType.mastercard,
              isChipVisible: true,
              padding: 16,
              glassmorphismConfig:
              cubit.useGlassMorphism ? Glassmorphism.defaultConfig() : null,
              cardNumber: cubit.cardNumber,
              expiryDate: cubit.expiryDate,
              cardHolderName: cubit.cardHolderName,
              cvvCode: cubit.cvvCode,
              bankName: 'VisaCard',
              frontCardBorder:
              !cubit.useGlassMorphism ? Border.all(color: Colors.grey) : null,
              backCardBorder:
              !cubit.useGlassMorphism ? Border.all(color: Colors.grey) : null,
              showBackView: cubit.isCvvFocused,
              obscureCardNumber: true,
              obscureCardCvv: true,
              isHolderNameVisible: true,
              // backgroundImage:
              // cubit.useBackgroundImage ? ImageAssets.cameras : null,
              isSwipeGestureEnabled: true,
              chipColor: MyColors.black,
              onCreditCardWidgetChange:
                  (CreditCardBrand creditCardBrand) {},
              customCardTypeIcons: <CustomCardTypeIcon>[
                CustomCardTypeIcon(
                  cardType: CardType.mastercard,
                  cardImage: Icon(Icons.contactless , color: Colors.white,),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
