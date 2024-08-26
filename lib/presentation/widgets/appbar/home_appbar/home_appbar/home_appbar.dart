import 'package:photogear_app/core/imports/app_imports.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 60.h,
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      shadowColor: Colors.teal,
      title: const TitleAppBar(),
    );
  }
}