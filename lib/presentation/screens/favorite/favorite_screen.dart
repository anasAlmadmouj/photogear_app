import 'package:photogear_app/core/imports/app_imports.dart';
import 'package:photogear_app/presentation/controller/favorite_cubit/favorite_cubit.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double h = (size.height - kToolbarHeight - 250) / 2;
    final double w = size.width / 2;

    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
              title: AppLocalizations.of(context)!.favorite,
              onPressed: ()=> AppCubit.get(context).backToHome(context: context),
          ),
          body: favoriteList.isEmpty
              ? EmptyScreenWidget(
            image: ImageAssets.favoriteEmpty,
            titleEmpty: AppLocalizations.of(context)!.favoriteEmpty,
            message: AppLocalizations.of(context)!.favoriteEmptyMessage,
          )
          : SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: (w/h),
                ),
                itemCount: favoriteList.length,
                itemBuilder: (context, index) {
                  final item = favoriteList[index];
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: CategoryBodyItem(
                      key: ValueKey(item.id),
                      image: item.image,
                      name: item.nameEn,
                      price: item.price,
                      favIcon: item.isFav ? Icons.favorite : Icons.favorite_outline,
                      favColor: item.isFav ? Theme.of(context).colorScheme.primary : Colors.grey,
                      onPressedFav: () {
                        FavoriteCubit.get(context).removeFromFavorite(index: index);
                      }, onPressedCart: () {
                        CartCubit.get(context).addToMyCart(
                            itemModel: item,
                            number: 1,
                            context: context);
                    },
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
