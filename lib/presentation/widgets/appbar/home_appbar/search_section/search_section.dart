import 'package:photogear_app/core/imports/app_imports.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Padding(
        padding: EdgeInsets.only(top: 100.h, bottom: 30.h),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            border: Border(
              bottom: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 1.w),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              right: 16.0,
              left: 16.0,
              bottom: 8.0,
            ),
            child: Row(
              children: [
                const SearchTextFiled(),
                10.width,
                Material(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(16),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          Icons.menu,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

