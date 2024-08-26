import 'package:photogear_app/core/imports/app_imports.dart';

class PriceButton extends StatelessWidget {
  final Color backGroundColor;
  final double? height;
  final double? width;
  final VoidCallback? function;
  final String? text;
  final double? borderRadius;
  final double? fontSize;
  final Color colorText;
  final Color borderSideColor;
  const PriceButton({super.key,
    required this.backGroundColor,
    this.function,
    this.text,
    this.height = 50,
    this.width = double.infinity,
    this.borderRadius = 0,
    this.fontSize = 18,
    this.colorText = Colors.white,
    this.borderSideColor = Colors.white,


  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(backGroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder >(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
              side: BorderSide(color: borderSideColor),
            ),
          ),
        ),
        onPressed: function,
        child: Text(
          "$text",
          style: TextStyle(
            color: colorText,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}