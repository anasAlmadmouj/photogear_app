import 'package:photogear_app/core/imports/app_imports.dart';

class OnTheWayContainer extends StatelessWidget {
  const OnTheWayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppLocalizations.of(context)!.onTheWay,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20.sp),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Theme.of(context).colorScheme.secondaryContainer),
          ),
          child: Row(
            children: [
              Icon(Icons.access_time_filled_outlined , color: Theme.of(context).colorScheme.primary,),
              5.width,
              Text('10 Min' , style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp),),
            ],
          ),
        )
      ],
    );
  }
}
