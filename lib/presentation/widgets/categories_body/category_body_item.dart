import 'package:photogear_app/core/imports/app_imports.dart';

class CategoryBodyItem extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final IconData favIcon;
  final Color favColor;
  final VoidCallback? onPressedFav;
  final VoidCallback? onPressedCart;
  const CategoryBodyItem({
    required this.image,
    required this.name,
    required this.price,
    required this.favColor,
    required this.favIcon,
    required this.onPressedFav,
    required this.onPressedCart,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Stack(fit: StackFit.expand, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: onPressedFav,
              icon: Icon(
                favIcon,
                color: favColor,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Image.asset(
                image,
                height: 80.h,
                fit: BoxFit.cover,
              ),
            ),
            10.height,
            Flexible(
              child: Text(
                name,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: '$price',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp),
                      children: [
                        TextSpan(
                          text: ' JOD',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp)
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  AddButton(
                    onPressed: onPressedCart,
                  ),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}