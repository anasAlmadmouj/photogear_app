import 'package:photogear_app/core/imports/app_imports.dart';
import 'package:photogear_app/presentation/screens/see_all_items/see_all_near_to_you_screen.dart';
import 'package:photogear_app/presentation/screens/see_all_items/see_all_special_offers.dart';
import 'package:photogear_app/presentation/screens/see_all_items/see_all_top_rated_screen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is HomeBody && runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit,AppState>(
        builder: (context, state){
          generateTopRatedList();
          generateNearToYouList();
          return Padding(
            padding: EdgeInsets.only(bottom: 24.h),
            child: Column(
              children: [
                TitleItem(
                  titleItemWidget: TitleItemWidget.text,
                  onPressed: (){
                    navigateTo(context, const SeeAllSpecialOffers());
                  },
                  title: AppLocalizations.of(context)!.specialOffers,
                ),
                SizedBox(
                  height: 150.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => OfferItem(
                      colorBackground: offersList[index].colorBackground,
                      backgroundImage: offersList[index].backgroundImage,
                      discount: offersList[index].discount,
                      offerInfo: offersList[index].offerInfo,
                    ),
                    separatorBuilder: (context, index) => 15.width,
                    itemCount: offersList.length,
                  ),
                ),
                TitleItem(
                  titleItemWidget: TitleItemWidget.text,
                  onPressed: (){
                    navigateTo(context, SeeAllTopRatedScreen());
                  },
                  title: AppLocalizations.of(context)!.topRated,
                ),
                SizedBox(
                  height: 180.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => SuggestionsItem(
                      onTap: (){
                        AppCubit.get(context).suggestionsOnTap(context, topRatedList[index]);
                      },
                      image: topRatedList[index].image,
                      price: topRatedList[index].price.toString(),
                      name: topRatedList[index].getName(context),
                    ),
                    separatorBuilder: (context, index) => 20.width,
                    itemCount: topRatedList.length,
                  ),
                ),
                TitleItem(
                  titleItemWidget: TitleItemWidget.text,
                  onPressed: (){
                    navigateTo(context, SeeAllNearToYouScreen());
                  },
                  title: AppLocalizations.of(context)!.nearToYou,
                ),
                SizedBox(
                  height: 180.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => SuggestionsItem(
                      onTap: (){
                        navigateTo(context, ItemDetailScreen(list: nearToYouList, index: index));
                      },
                      image: nearToYouList[index].image,
                      price: nearToYouList[index].price.toString(),
                      name: nearToYouList[index].getName(context),
                    ),
                    separatorBuilder: (context, index) => 20.width,
                    itemCount: nearToYouList.length,
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}