import 'package:photogear_app/core/imports/app_imports.dart';

class DeliveryAddressContainer extends StatelessWidget {
  const DeliveryAddressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      10.width,
                      Text(
                        'Amman',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                      ),
                    ],
                  ),
                  10.height,
                  Text('Elgalaa street - First, second section, Assiut Behind the events house',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp),),
                  10.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AppLocalizations.of(context)!.change,
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp , color: Theme.of(context).colorScheme.onSurface , fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
