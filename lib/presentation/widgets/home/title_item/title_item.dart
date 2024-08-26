import 'package:photogear_app/core/imports/app_imports.dart';

class TitleItem extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final TitleItemWidget titleItemWidget;
  const TitleItem({
    required this.title,
    required this.onPressed,
    super.key, required this.titleItemWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp)!.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          TextButton(
            onPressed: onPressed,
            child: titleItemWidget == TitleItemWidget.icon ? IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back))
            : Text(
              AppLocalizations.of(context)!.seeAll,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.onSurface, fontSize: 16.sp),
            ),
          ),
        ],
      ),
    );
  }
}