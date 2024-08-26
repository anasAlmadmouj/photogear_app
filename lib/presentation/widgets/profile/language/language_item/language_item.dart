import 'package:photogear_app/core/imports/app_imports.dart';

class LanguageItem extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final String textConditionLAng;
  const LanguageItem({super.key, this.onTap, required this.text, required this.textConditionLAng});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleSmall!.copyWith(fontSize: 16.sp)!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Localizations.localeOf(context).languageCode == textConditionLAng
              ? Icon(
            Icons.check,
            color: Theme.of(context).colorScheme.onPrimary,
          )
              : const SizedBox(),
        ],
      ),
    );
  }
}
