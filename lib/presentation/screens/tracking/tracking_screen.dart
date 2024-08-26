import 'package:photogear_app/core/imports/app_imports.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: CustomAppBar(title: AppLocalizations.of(context)!.trackOrder),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Image(
              image: AssetImage(ImageAssets.map),
            ),
            TrackingContainer(),
          ],
        ),
      ),
    );
  }
}