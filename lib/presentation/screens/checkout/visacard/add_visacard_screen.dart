import 'package:photogear_app/core/imports/app_imports.dart';

class AddVisaCardScreen extends StatelessWidget {
  const AddVisaCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
  builder: (context, state) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(AppLocalizations.of(context)!.addVisa , style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20.sp),),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                maybePop(context);
              },),
            pinned: true,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          ),
          SliverSizedBox(size: 20.height),
          const CustomCreditCardWidget(),
          SliverSizedBox(size: 20.height),
          const CustomCreditCardForm(),
          SliverSizedBox(size: 20.height),
          const SocialMediaContainer(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SaveDetailsWidget(),
                  20.height,
                  CustomElevatedButton(
                    function: (){
                      PaymentCubit.get(context).onAddVisaValidate(context);
                    },
                    text: AppLocalizations.of(context)!.confirm,
                    backGroundColor: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  },
);
  }
}
