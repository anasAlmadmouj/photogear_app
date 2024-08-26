import 'package:photogear_app/core/imports/app_imports.dart';

class SuggestionsItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final void Function()? onTap;
  const SuggestionsItem({
    required this.image,
    required this.price,
    required this.name,
    super.key, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120.w,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            10.height,
            Text(
              textAlign: TextAlign.center,
              name,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp)!.copyWith(color: Theme.of(context).colorScheme.onPrimary)
            ),
            10.height,
            PriceButton(
                text: price,
                backGroundColor: Theme.of(context).colorScheme.primary,
                width: 100.w,
                height: 25.h,
                colorText: MyColors.darkWhite,
                borderRadius: 16.r,
                fontSize: 14.sp
            ),
          ],
        ),
      ),
    );
  }
}