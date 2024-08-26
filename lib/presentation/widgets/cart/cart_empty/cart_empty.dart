import 'package:photogear_app/core/imports/app_imports.dart';

class EmptyScreenWidget extends StatelessWidget {
  final String message;
  final String titleEmpty;
  final String image;
  const EmptyScreenWidget({
    super.key, required this.message, required this.image, required this.titleEmpty,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(image)),
          10.height,
          Text(
            titleEmpty,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 24.sp),),
          20.height,
          Text(
            message,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
