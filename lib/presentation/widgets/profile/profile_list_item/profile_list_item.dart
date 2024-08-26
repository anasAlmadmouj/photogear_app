import 'package:photogear_app/core/imports/app_imports.dart';

class ProfileListItem extends StatelessWidget {
  final int index;

  const ProfileListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Color constColor = Theme.of(context).colorScheme.onSurface;
    return BlocBuilder<AppCubit, AppState>(

  builder: (context, state) {
    return ListTile(
      onTap: index == 0 ? ()=> navigateTo(context, const LanguageScreen())
          : index == 3 ? ()=> LoginCubit.get(context).signOut(context)
      : null,
      leading: Icon(
        profileList[index].icon,
        color: constColor,
      ),
      title: Text(
        profileList[index].name,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp)!.copyWith(color: constColor),
      ),
      trailing: index == 2
          ? Switch(
              value: AppCubit.get(context).isDark,
              activeColor: Colors.white,
              activeTrackColor: Theme.of(context).colorScheme.primary,

              onChanged: (val) {
                AppCubit.get(context).changeThem(val);
              })
          : index == 3 ? null
          :Icon(Icons.arrow_forward_ios_outlined, color: constColor),
    );
  },
);
  }
}
