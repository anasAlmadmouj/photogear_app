import 'package:photogear_app/core/imports/app_imports.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    AppCubit appCubit = AppCubit.get(context);
    return BlocBuilder<AppCubit , AppState>(
        builder: (context, state) {
          var currentBackPressTime;
          return WillPopScope(
            onWillPop: () async {
              DateTime now = DateTime.now();
              print(appCubit.homeBody == const HomeBody() ? 'true body' : 'false body');
              print(appCubit.bottomBarIndex == 0 ? 'true index' : 'false index');
              print('appCubit.homeBody === ${appCubit.homeBody}');
              if(appCubit.bottomBarIndex == 0 && appCubit.homeBody == const HomeBody()) {
                if (currentBackPressTime == null ||
                    now.difference(currentBackPressTime) >
                        const Duration(seconds: 2)) {
                  currentBackPressTime = now;
                  AppCubit.get(context).showSnackBar(context: context,
                    title: AppLocalizations.of(context)!.clickAgain,
                    colorState: ColorState.error,
                  );
                  return Future.value(false);
                }
                return Future.value(true);
              }
              else{
                return false;
              }
            },
            child: Scaffold(
              body: bottomBarScreensList[appCubit.bottomBarIndex],
              floatingActionButton: FloatingActionButton(
                backgroundColor: Theme.of(context).colorScheme.primary, //Floating action button on Scaffold
                onPressed: () {
                  AppCubit.get(context).changeIndexBottomBar(index: 2);
                },
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ), //icon inside button
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: const AppBottomBar(),
            ),
          );
        }
    );
  }
}

