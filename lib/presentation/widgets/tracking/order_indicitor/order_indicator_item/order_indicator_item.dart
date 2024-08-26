import 'package:photogear_app/core/imports/app_imports.dart';

class OrderIndicatorItem extends StatelessWidget {
  final String text;
  final Color? colorIndicator;
  final Color? colorText;
  const OrderIndicatorItem({super.key, required this.text, required this.colorIndicator, required this.colorText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp)!.copyWith(color: colorText),
        ),
        10.height,
        Container(
          width: 70.w,
          height: 7.h,
          decoration: BoxDecoration(color: colorIndicator),
        ),
      ],
    );
  }
}
