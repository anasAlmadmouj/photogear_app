import 'package:photogear_app/core/imports/app_imports.dart';

class DeliveryAddressTracking extends StatelessWidget {
  const DeliveryAddressTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            AppLocalizations.of(context)!.deliveryAddress,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp)
        ),
        10.height,
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Theme.of(context).colorScheme.primary,
            ),
            15.width,
            Text(
              '${LoginCubit.get(context).currentUser!.city} , ${LoginCubit.get(context).currentUser!.street} ',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp)!.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
