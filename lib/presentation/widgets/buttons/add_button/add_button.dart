import 'package:photogear_app/core/imports/app_imports.dart';

class AddButton extends StatelessWidget {
  final void Function()? onPressed;
  const AddButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30.w,
        height: 30.h,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          shape: BoxShape.circle,
        ),
        child: IconButton(onPressed: onPressed, icon: Icon(Icons.add , size: 14,color: Colors.white,)));
  }
}
