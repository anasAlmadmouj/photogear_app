import 'package:photogear_app/core/imports/app_imports.dart';

class BottomBarItem extends StatelessWidget {
  final IconData icon;
  final bool colorCondition;
  final void Function()? onPressed;
  const BottomBarItem({
    super.key, required this.icon, required this.colorCondition, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: IconButton(
          icon: Icon(
            icon,
            color: colorCondition ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onPrimary,
            size: 25.r,
          ),
          onPressed: onPressed,
        ));
  }
}