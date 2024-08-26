import 'package:photogear_app/core/imports/app_imports.dart';

class SeeAllItemsBody extends StatelessWidget {
  final List<ItemModel> list;
  const SeeAllItemsBody({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double h = (size.height - kToolbarHeight - 250) / 2;
    final double w = size.width / 2;
    return Padding(
      padding: const EdgeInsets.only(right: 16 , left: 16 , bottom: 16),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => navigateTo(context, ItemDetailScreen(list: list, index: index,)),
          child: SuggestionsItem(
            onTap: (){
              AppCubit.get(context).suggestionsOnTap(context, list[index]);
            },
            image: list[index].image,
            price: list[index].price.toString(),
            name: list[index].getName(context),
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
    );
  }
}
