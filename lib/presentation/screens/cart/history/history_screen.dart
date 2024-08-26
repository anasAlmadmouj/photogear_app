import 'package:photogear_app/core/imports/app_imports.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
      return historyList.isEmpty
            ? EmptyScreenWidget(
        image: ImageAssets.cartEmpty,
        titleEmpty: AppLocalizations.of(context)!.historyEmpty,
        message: AppLocalizations.of(context)!.historyEmptyMessage,
      )
            : ListView.separated(
          itemBuilder: (context, index) {
            CartModel cartModel = historyList[index];
            return CartItem(isCart: false , cartModel: cartModel, index: index);
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: historyList.length,
        );

    });
  }
}