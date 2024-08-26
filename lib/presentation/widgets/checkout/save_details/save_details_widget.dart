import 'package:photogear_app/core/imports/app_imports.dart';

class SaveDetailsWidget extends StatelessWidget {
  const SaveDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentCubit cubit = PaymentCubit.get(context);
    return BlocBuilder<PaymentCubit, PaymentState>(
  builder: (context, state) {
    return Row(
      children: [
        Expanded(child: Text(AppLocalizations.of(context)!.saveDetails,style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp))),
        Switch(
            value: cubit.isFast,
            activeColor: Colors.white,
            activeTrackColor: Theme.of(context).colorScheme.primary,
            onChanged: (value){
                cubit.changeIsFastSwitch(value);
            }
        ),

      ],
    );
  },
);
  }
}
