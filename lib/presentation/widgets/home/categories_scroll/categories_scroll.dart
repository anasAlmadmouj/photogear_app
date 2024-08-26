import 'package:photogear_app/core/imports/app_imports.dart';

class CategoriesScroll extends StatelessWidget {
  const CategoriesScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(builder: (context, state) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 120.h,
            decoration: buildBoxDecoration(context),
            child: ListView.separated(
              padding: const EdgeInsets.only(top: 22, right: 22),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CategoriesItem(index: index,),
              separatorBuilder: (context, index) => SizedBox(
                width: 10.w,
              ),
              itemCount: categoriesList.length,
            ),
          ),
        ),
      );
    });
  }

  BoxDecoration buildBoxDecoration(BuildContext context) {
    return BoxDecoration(
              border: Border(
            bottom: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ));
  }
}

