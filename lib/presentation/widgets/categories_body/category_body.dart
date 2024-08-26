import 'package:photogear_app/core/imports/app_imports.dart';
import 'package:photogear_app/presentation/controller/favorite_cubit/favorite_cubit.dart';

class CategoryBody extends StatelessWidget {
  final List<ItemModel> list;
  const CategoryBody({
    super.key, required this.list,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double h = (size.height - kToolbarHeight - 250) / 2;
    final double w = size.width / 2;
    return BlocBuilder<FavoriteCubit, FavoriteState>(builder: (context, state) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16 , left: 16 , bottom: 16),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => navigateTo(context, ItemDetailScreen(list: list, index: index,)),
                child: CategoryBodyItem(
                  onPressedCart: (){
                    CartCubit.get(context).addToMyCart(
                      context: context,
                      number: 1,
                      itemModel: list[index],
                    );
                  },
                  image: list[index].image,
                  name: list[index].getName(context),
                  price: list[index].price,
                  favIcon: list[index].isFav
                      ? Icons.favorite
                      : Icons.favorite_outline,
                  favColor:
                  list[index].isFav ? Theme.of(context).colorScheme.primary : Colors.grey,
                  onPressedFav: () {
                    FavoriteCubit.get(context).addRemoveFavorite(
                      index: index,
                      itemModel: list[index],
                      itemsList: list,
                    );
                  },
                ),
              ),
              itemCount: list.length,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: (w/h),
              ),
            ),
          ),
        ],
      );
    });
  }
}