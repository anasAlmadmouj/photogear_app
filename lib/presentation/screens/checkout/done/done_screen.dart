import 'package:photogear_app/core/imports/app_imports.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit,AppState>(
        builder: (context, state)  {
          return Scaffold(
            body: Padding(
              padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageAssets.done,
                    width: 200,
                    height: 200,
                  ),
                  10.height,
                  Text(
                    AppLocalizations.of(context)!.orderDone,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20.sp),
                    textAlign: TextAlign.center,
                  ),
                  10.height,
                  Text(
                    textAlign: TextAlign.center,
                    AppLocalizations.of(context)!.getOrderMessage,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                  ),
                  20.height,
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0,right: 40.0 , top: 20.0 , bottom: 10),
                    child: CustomElevatedButton(
                      text: AppLocalizations.of(context)!.trackOrder,
                      backGroundColor: Theme.of(context).colorScheme.primary,
                      function: (){
                        AppCubit.get(context).bottomBarIndex = 3;
                        navigateToAndRemoveUntil(context, const AppLayout());
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      AppCubit.get(context).bottomBarIndex = 0;
                      navigateToAndRemoveUntil(context, const AppLayout());
                    },
                    child: Text(
                      AppLocalizations.of(context)!.backToHome,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}