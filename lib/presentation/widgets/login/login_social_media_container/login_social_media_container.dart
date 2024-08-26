import 'package:photogear_app/core/imports/app_imports.dart';

class LoginSocialMediaContainer extends StatelessWidget {
  const LoginSocialMediaContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SocialMediaItem(image: ImageAssets.google),
        25.width,
        const SocialMediaItem(image: ImageAssets.facebook),
        25.width,
        const SocialMediaItem(image: ImageAssets.twitter),
      ],
    );
  }
}
