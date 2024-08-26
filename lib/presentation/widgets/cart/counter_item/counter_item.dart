import 'package:photogear_app/core/imports/app_imports.dart';

class CounterItem extends StatelessWidget {
  final void Function()? onTap;
  final IconData icon;
  const CounterItem({super.key, this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        alignment: Alignment.center,
        width: 40.w,
        height: 25.h,
        child: Icon(
          icon,
          color:Theme.of(context).colorScheme.primary,
          size: 16.sp,
        ),
      ),
    );
  }
}
