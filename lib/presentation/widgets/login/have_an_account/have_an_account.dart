import 'package:photogear_app/core/imports/app_imports.dart';

class HaveAnAccount extends StatelessWidget {
  final String question;
  final String textButton;
  const HaveAnAccount({super.key, required this.question, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(question , style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp),),
        5.width,
        TextButton(onPressed: (){}, child: Text(textButton, style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp)!.copyWith(color: Theme.of(context).colorScheme.primary),),),
      ],
    );
  }
}
