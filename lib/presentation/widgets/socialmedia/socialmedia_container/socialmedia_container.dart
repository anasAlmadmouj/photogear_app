import 'package:photogear_app/core/imports/app_imports.dart';

class SocialMediaContainer extends StatelessWidget {
  const SocialMediaContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SocialMediaItem(image: ImageAssets.google),
            25.width,
            const SocialMediaItem(image: ImageAssets.facebook),
            25.width,
            const SocialMediaItem(image: ImageAssets.twitter),
          ],
        ),
      ),
    );
  }
}
