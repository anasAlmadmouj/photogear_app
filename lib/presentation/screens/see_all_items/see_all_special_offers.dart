import 'package:photogear_app/core/imports/app_imports.dart';
import 'package:photogear_app/presentation/widgets/see_all_item/see_all_special_offers_body.dart';

class SeeAllSpecialOffers extends StatelessWidget {
  const SeeAllSpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppLocalizations.of(context)!.specialOffers),
      body:  const SafeArea(
          child: CustomScrollView(
            slivers: [
              OffersBody(),
            ],
          )),
    );
  }
}
