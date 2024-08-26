import 'package:photogear_app/core/imports/app_imports.dart';

class SocialMediaItem extends StatelessWidget {
  final String image;
  const SocialMediaItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 40.h,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Image.asset(image),
    );
  }
}
