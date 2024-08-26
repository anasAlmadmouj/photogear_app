import 'package:photogear_app/core/imports/app_imports.dart';

class ProfileInfoContainer extends StatelessWidget {
  const ProfileInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = LoginCubit.get(context);
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 40.r,
          backgroundImage: const AssetImage(ImageAssets.profilePic),
        ),
        20.width,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cubit.currentUser!.name,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20.sp),
            ),
            10.height,
            Text(
              '${cubit.currentUser!.country} , ${cubit.currentUser!.city}',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp , fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          child: Icon(
            Icons.edit,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}
