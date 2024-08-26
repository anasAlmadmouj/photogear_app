import 'package:photogear_app/core/imports/app_imports.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({super.key ,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                 AppLocalizations.of(context)!.deliverTo,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
              ),
              10.height,
              Row(
                children: [
                   Icon(
                    Icons.location_on_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  10.width,
                   Text(
                    LoginCubit.get(context).currentUser!.city,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp),
                  ),
                  10.width,
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ],
              ),
            ],
          ),
        ),
        Material(
            color: Theme.of(context).colorScheme.onSecondary,
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              onTap: () {
                // navigateTo(context, const AppLayout(),);
              },
              borderRadius: BorderRadius.circular(16.r),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Badge(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  label: Text('1' , style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp , color: Theme.of(context).colorScheme.onPrimary),),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
