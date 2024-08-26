import 'package:photogear_app/core/imports/app_imports.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LanguageItem(
                      text: 'Arabic',
                      textConditionLAng: 'ar',
                    onTap: (){
                      if(Localizations.localeOf(context).languageCode == 'ar'){
                        null;
                      }
                      else {
                        appCubit.changeLanguageValue('Arabic');
                        navigateToAndRemoveUntil(context, const AppLayout());
                      }
                    },
                  ),
                  15.height,
                  LanguageItem(
                    text: 'English',
                    textConditionLAng: 'en',
                    onTap: (){
                      if(Localizations.localeOf(context).languageCode == 'en'){
                        null;
                      }
                      else {
                        appCubit.changeLanguageValue('English');
                        navigateToAndRemoveUntil(context, const AppLayout());
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
