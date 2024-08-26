import 'package:photogear_app/core/imports/app_imports.dart';
import 'package:photogear_app/presentation/widgets/text_field_dialog/text_field_dialog.dart';

class CustomBottomSheet extends StatelessWidget {
  final String hintText;
  final List<String?> title;
  final void Function(int index)? onTap;
  final int itemCount;
  final double? height = 300;
  const CustomBottomSheet({
    super.key, this.onTap, required this.hintText, required this.title, required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return TextFieldDialog(
          hintText: hintText,
          onTap: () {
                showModalBottomSheet(
                  backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30))),
                  builder: (context) =>
                      Container(
                        height: height,
                        padding: const EdgeInsets.all(12),
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              Column(
                                children: [
                                  5.height,
                                  const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                                    child: Divider(color: MyColors.lightGrayColor,),
                                  ),
                                ],
                              ),
                          itemCount: itemCount,
                          itemBuilder: (context, index) =>
                              InkWell(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    child: Text(title[index] ?? '' , style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),),
                                  ),
                                ),
                                onTap: () {
                                  onTap?.call(index);
                                },
                              ),
                        ),
                      ),
                );

          },
        );
      },
    );
  }
}