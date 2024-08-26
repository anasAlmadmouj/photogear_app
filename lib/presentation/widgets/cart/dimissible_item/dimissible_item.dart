import 'package:photogear_app/core/imports/app_imports.dart';

class DimissableItem extends StatelessWidget {
  final void Function(DismissDirection)? onDismissed;
  final int index;
  const DimissableItem({
    super.key,
    required this.item, this.onDismissed, required this.index,
  });

  final CartModel item;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        onDismissed: onDismissed,
        background: Container(
          alignment: Alignment.centerRight,
          color: Theme.of(context).colorScheme.primary,
          child: Icon(
            Icons.delete,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
        child: CartItem(cartModel: item, index: index,)
    );
  }
}