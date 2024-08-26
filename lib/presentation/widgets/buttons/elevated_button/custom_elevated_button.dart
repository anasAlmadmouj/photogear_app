import 'package:photogear_app/core/imports/app_imports.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color? backGroundColor;
  final double? height;
  final double? width;
  final VoidCallback? function;
  final String? text;
  final Color? colorText;
  final Color? borderSideColor;
  const CustomElevatedButton({super.key,this.width ,  this.backGroundColor, this.function, this.text, this.height, this.colorText, this.borderSideColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? MediaQuery.sizeOf(context).width/1.2,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(backGroundColor ?? Theme.of(context).colorScheme.primary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder >(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
          ),
        ),
        onPressed: function,
        child: Text(
          "$text",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp)!.copyWith(color: MyColors.darkWhite , fontSize: 16.sp)
        ),
      ),
    );
  }
}