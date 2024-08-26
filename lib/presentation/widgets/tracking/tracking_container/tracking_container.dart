import 'package:photogear_app/core/imports/app_imports.dart';

class TrackingContainer extends StatelessWidget {
  const TrackingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0,),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 270.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Column(
          children: [
            const OnTheWayContainer(),
            20.height,
            const OrderIndicatorContainer(),
            20.height,
            const DeliveryHeroContainer(),
            10.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
                endIndent: 2,
              ),
            ),
            10.height,
            const DeliveryAddressTracking(),
          ],
        ),
      ),
    );
  }
}
