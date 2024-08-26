import 'package:photogear_app/core/imports/app_imports.dart';
import 'package:photogear_app/core/themes/theme_data/theme_data_dark.dart';
import 'package:photogear_app/presentation/controller/favorite_cubit/favorite_cubit.dart';
import 'package:photogear_app/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:photogear_app/presentation/screens/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();
  // const ScreenUtilInit();
  // ScreenUtil.init(context);
  Widget widget;
  bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  if (onBoarding != null) {
    widget = const LogInScreen();
  } else {
    widget = const OnBoardingScreen();
  }
  runApp(MyApp(startWidget: widget,));
}

class MyApp extends StatelessWidget {
  final Widget startWidget;
  const MyApp({super.key, required this.startWidget});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(),
        ),
        BlocProvider(
          create: (context) => FavoriteCubit(),
        ),
        BlocProvider(
          create: (context) => CartCubit(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => PaymentCubit(),
        ),
      ],
      child: MyAppWithTheme(startWidget: startWidget,),
    );
  }
}
class MyAppWithTheme extends StatelessWidget {
  final Widget startWidget;
  const MyAppWithTheme({super.key, required this.startWidget});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              AppCubit appCubit = AppCubit.get(context);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: appCubit.isDark && appCubit.languageValue == 'Arabic'
                    ? themeDataDarkArabic()
                    : appCubit.isDark && appCubit.languageValue == 'English'
                    ? themeDataDarkEnglish()
                    : !appCubit.isDark &&
                    appCubit.languageValue == 'Arabic'
                    ? themeDataLightArabic()
                    : themeDataLightEnglish(),
                supportedLocales: AppLocalizations.supportedLocales,
                localizationsDelegates:
                AppLocalizations.localizationsDelegates,
                locale: appCubit.languageValue == 'Arabic'
                    ? const Locale('Ar')
                    : const Locale('en'),
                home: SplashScreen(startWidget: startWidget),
              );
            },
          ),
        );
      },
    );
  }
}

