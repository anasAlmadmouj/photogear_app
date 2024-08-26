import 'package:photogear_app/core/imports/app_imports.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget{
  final String firstTab;
  final String secondTab;
  const CustomTabBar({
    super.key, required this.firstTab, required this.secondTab,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Theme.of(context).colorScheme.primary,
      unselectedLabelColor: Theme.of(context).colorScheme.secondary,
      indicatorColor: Theme.of(context).colorScheme.primary,
      tabs: [
        Tab(text: firstTab),
        Tab(text: secondTab),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(48.0.h);
}
