import 'package:photogear_app/core/imports/app_imports.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return BottomAppBar(
          elevation: 50,
          height: 55.h,
          shape: const CircularNotchedRectangle(),
          // notch for the floating action button
          notchMargin: 8,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BottomBarItem(
                icon: Icons.home,
                colorCondition: cubit.bottomBarIndex == 0,
                onPressed: () {
                  cubit.changeIndexBottomBar(index: 0);
                  cubit.backToHomeBody();
                },
              ),
              BottomBarItem(
                icon: Icons.favorite,
                colorCondition: cubit.bottomBarIndex == 1,
                onPressed: () => cubit.changeIndexBottomBar(index: 1),
              ),
              const Spacer(), // This spacer creates space for the floating button in the middle
              BottomBarItem(
                icon: Icons.location_on_outlined,
                colorCondition: cubit.bottomBarIndex == 3,
                onPressed: () => cubit.changeIndexBottomBar(index: 3),
              ),
              BottomBarItem(
                icon: Icons.person,
                colorCondition: cubit.bottomBarIndex == 4,
                onPressed: () => cubit.changeIndexBottomBar(index: 4),
              ),
            ],
          ),
        );
      },
    );
  }
}
