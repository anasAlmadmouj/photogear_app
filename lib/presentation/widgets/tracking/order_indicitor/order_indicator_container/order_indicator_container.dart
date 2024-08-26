import 'package:photogear_app/core/imports/app_imports.dart';

class OrderIndicatorContainer extends StatelessWidget {
  const OrderIndicatorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OrderIndicatorItem(
          text: AppLocalizations.of(context)!.orderPlaced,
          colorIndicator: Theme.of(context).colorScheme.primary,
          colorText: Theme.of(context).colorScheme.primary,
        ),
        20.width,
        OrderIndicatorItem(
          text: AppLocalizations.of(context)!.onTheWay,
          colorIndicator: Theme.of(context).colorScheme.secondary,
          colorText: Theme.of(context).colorScheme.secondary,
        ),
        20.width,
        OrderIndicatorItem(
          text: AppLocalizations.of(context)!.delivered,
          colorIndicator: Theme.of(context).colorScheme.secondary,
          colorText: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }
}
