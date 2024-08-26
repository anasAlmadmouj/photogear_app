import 'package:photogear_app/core/imports/app_imports.dart';

class SeeAllNearToYouScreen extends StatelessWidget {
  const SeeAllNearToYouScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppLocalizations.of(context)!.nearToYou),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(child: SeeAllItemsBody(list: nearToYouList)),
          )),
    );

  }
}
