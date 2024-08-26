import 'package:photogear_app/core/imports/app_imports.dart';
import 'package:photogear_app/presentation/controller/favorite_cubit/favorite_cubit.dart';

class ItemDetailScreen extends StatelessWidget {
  final List<ItemModel> list;
  final int index;

  const ItemDetailScreen({super.key, required this.list, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(title: ''),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 24, right: 16.0, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      list[index].getName(context),
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  20.height,
                  Image(
                    image: AssetImage(list[index].image),
                    fit: BoxFit.contain,
                    height: MediaQuery.sizeOf(context).height / 4,
                  ),
                  20.height,
                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  20.height,
                  Text(
                    '\$${list[index].price}',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20.sp)!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  16.height,
                  Text(
                    list[index].getDescription(context),
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!.copyWith(fontSize: 16.sp)!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                          text: 'Add To Cart',
                          backGroundColor: Theme.of(context).colorScheme.primary,
                          function: () => CartCubit.get(context).addToMyCart(
                            itemModel: list[index],
                            number: 1,
                            context: context,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            FavoriteCubit.get(context).addRemoveFavorite(
                              index: index,
                              itemModel: list[index],
                              itemsList: list,
                            );
                          },
                          icon: Icon(
                              list[index].isFav
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              size: 36.sp,
                              color: list[index].isFav
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
