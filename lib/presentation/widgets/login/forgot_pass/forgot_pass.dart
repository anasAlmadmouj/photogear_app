import 'package:photogear_app/core/imports/app_imports.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(onPressed: (){}, child: Text('Forgot Password?' ,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp)!.copyWith(color: Theme.of(context).colorScheme.primary),
          ),),
        ],
      ),
    );
  }
}
