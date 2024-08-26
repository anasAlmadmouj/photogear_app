import 'package:photogear_app/core/imports/app_imports.dart';

showCustomDropDownDialog({
  required BuildContext context,
  required String content,
  required String title,
  required String textAction,
  required void Function()? onPressedAction,
}) {
  return showDialog(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) {
        setState;
        return AlertDialog(
          title: Row(
            children: [
              Expanded(child: Text(title)),
            ],
          ),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                maybePop(context); // Dismiss the dialog
              },
              child: Text(AppLocalizations.of(context)!.cancel),
            ),
            TextButton(
              onPressed: onPressedAction,
              child: Text(textAction),
            ),
          ],
        );
      }
    ),
  );
}
