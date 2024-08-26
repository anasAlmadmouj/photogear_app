import 'package:photogear_app/core/imports/app_imports.dart';
import 'package:photogear_app/presentation/widgets/see_all_item/see_all_item_body.dart';

class SeeAllTopRatedScreen extends StatelessWidget {
  const SeeAllTopRatedScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppLocalizations.of(context)!.topRated),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(child: SeeAllItemsBody(list: topRatedList)),
          )),
    );
  }
}
