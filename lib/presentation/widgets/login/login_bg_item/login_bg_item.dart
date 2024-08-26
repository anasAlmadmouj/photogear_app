import 'package:photogear_app/core/font_size/font_size.dart';
import 'package:photogear_app/core/imports/app_imports.dart';

class LoginBgItem extends StatelessWidget {
  const LoginBgItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).width / 1.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.r),
            bottomRight: Radius.circular(25.r)),
        image: const DecorationImage(
            image: AssetImage(ImageAssets.offerBg), fit: BoxFit.contain , opacity: 0.2),
        color: MyColors.lightGrayColor,
      ),
      child: Text('PhotoGear' , style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: MyColors.darkWhite , fontSize: 50.sp),),
    );
  }
}
