import 'package:photogear_app/core/imports/app_imports.dart';

class DeliveryHeroContainer extends StatelessWidget {
  const DeliveryHeroContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(
            ImageAssets.profilePic,
          ),
        ),
        10.width,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your delivery hero',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp),
            ),
            5.height,
            Text(
              'Abdulmalik Qasim ',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp)!.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            child: Icon(
              Icons.chat,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        15.width,
        InkWell(
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            child: Icon(
              Icons.phone,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
