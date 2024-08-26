import 'package:photogear_app/core/imports/app_imports.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        navigateToAndRemoveUntil(context, AppLayout());
      },
      icon: Icon(
        Icons.logout_outlined,
        color: Theme.of(context).colorScheme.primary,
      ),
      label: Text(AppLocalizations.of(context)!.logout , style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),),
    );
  }
}
