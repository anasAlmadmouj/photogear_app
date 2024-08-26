import 'package:photogear_app/core/imports/app_imports.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: AppLocalizations.of(context)!.search,
          filled: true,
          fillColor: Theme.of(context).colorScheme.secondaryContainer,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
