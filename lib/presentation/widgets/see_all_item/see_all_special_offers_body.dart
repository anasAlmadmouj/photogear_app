import 'package:photogear_app/core/imports/app_imports.dart';

class OffersBody extends StatelessWidget {
  const OffersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: OfferItem(
              colorBackground: offersList[index].colorBackground,
              backgroundImage: offersList[index].backgroundImage,
              discount: offersList[index].discount,
              offerInfo: offersList[index].offerInfo,
            ),
          );
        },
        childCount: offersList.length,
      ),
    );
  }
}