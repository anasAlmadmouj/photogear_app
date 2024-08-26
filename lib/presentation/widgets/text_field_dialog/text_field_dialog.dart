import 'package:photogear_app/core/imports/app_imports.dart';

class TextFieldDialog extends StatelessWidget {
  final String hintText;
  final void Function()? onTap;
  final IconData? suffixIcon;
  const TextFieldDialog({super.key, required this.hintText, this.onTap, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
  builder: (context, state) {
    return Center(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width/1.2,
        child: TextFormField(
          readOnly: true,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(24) ,
                borderSide: BorderSide(color: Theme.of(context).colorScheme.onPrimary)),
            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(24) ,
            borderSide: BorderSide(color: Theme.of(context).colorScheme.onPrimary)),
            filled: true,
            fillColor: Theme.of(context).colorScheme.secondaryContainer,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Icon(Icons.add, size: 16.sp, color: Colors.grey,),
            ),
              hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp),
          ),
          onTap: onTap,
        ),
      ),
    );
  },
);
  }
}
