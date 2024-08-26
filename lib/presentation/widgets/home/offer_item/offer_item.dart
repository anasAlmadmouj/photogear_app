import 'package:photogear_app/core/imports/app_imports.dart';

class OfferItem extends StatelessWidget {
  final String backgroundImage;
  final String discount;
  final String offerInfo;
  final Color colorBackground;

  const OfferItem({
    required this.backgroundImage,
    required this.discount,
    required this.offerInfo,
    required this.colorBackground,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width - 20.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colorBackground,
        image: const DecorationImage(
          image: AssetImage(ImageAssets.offerBg),
          fit: BoxFit.cover,
          opacity: 0.2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  discount,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20.sp),
                ),
                Expanded(
                  child: Text(
                    offerInfo,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20.sp),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.h,
            child: Image(
              image: AssetImage(backgroundImage),
              fit: BoxFit.contain, // Ensure the image fits within the available space
            ),
          ),
        ],
      ),
    );
  }
}
