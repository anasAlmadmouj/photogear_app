import 'package:photogear_app/core/imports/app_imports.dart';

class HistoryEmpty extends StatelessWidget {
  const HistoryEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(image: AssetImage(ImageAssets.cartEmpty)),
          20.height,
          Text(
            AppLocalizations.of(context)!.historyEmpty,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 24.sp),
          ),
          20.height,
          Text(
            AppLocalizations.of(context)!.historyEmptyMessage,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
