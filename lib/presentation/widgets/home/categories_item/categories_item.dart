import 'package:photogear_app/core/imports/app_imports.dart';

class CategoriesItem extends StatelessWidget {
  final int index;

  const CategoriesItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if(AppCubit.get(context).bodyIndex == index) {
              AppCubit.get(context).backToHomeBody();
            }
            else{
              AppCubit
                  .get(context)
                  .bodyIndex = index;
              AppCubit.get(context).changeHomeBody(index: index);
            }
          },
          child: Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppCubit.get(context).bodyIndex == index
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.secondaryContainer),
            child: Center(
                child: Image(
              image: AssetImage(categoriesList[index].image),
              fit: BoxFit.contain,
              width: 50.w,
              height: 50.h,
            )),
          ),
        ),
        3.height,
        Text(
          categoriesList[index].getName(context),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp),
        ),
      ],
    );
  }
}
