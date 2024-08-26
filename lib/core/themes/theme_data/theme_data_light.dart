import 'package:photogear_app/core/constants/colors/my_colors.dart';
import 'package:photogear_app/core/imports/app_imports.dart';

ThemeData themeDataLightArabic() => ThemeData(
  // scaffoldBackgroundColor: MyColors.scaffoldColor,
  useMaterial3: true,
  // primaryColor: MyColors.whiteColor,
  // colorSchemeSeed: MyColors.primaryColor,
  iconTheme: const IconThemeData(
      color: MyColors.primaryColor
  ),
  colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      background: MyColors.scaffoldColor,
      primary: MyColors.primaryColor,
      secondary: MyColors.lightGrayColor,
      primaryContainer: MyColors.whiteColor,
      secondaryContainer: MyColors.darkWhite,
      error: MyColors.redColor,
      onPrimary: MyColors.black,
    onSurface: MyColors.grayColor,
  ),
  scaffoldBackgroundColor: MyColors.scaffoldColor,
  // fontFamily: 'NotoNaskhArabic',
  textTheme: textTheme,
  datePickerTheme: DatePickerThemeData(
    yearForegroundColor: const MaterialStatePropertyAll(MyColors.black),
    yearStyle: TextStyle(
      fontSize: 16.sp,
    ),
  ),
  bottomAppBarTheme: BottomAppBarTheme(
    color: MyColors.bottomBarColor,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: MyColors.bottomBarColor,
    elevation: 0,
  ),
);

ThemeData themeDataLightEnglish() => ThemeData(
  // scaffoldBackgroundColor: MyColors.scaffoldColor,
  useMaterial3: true,
  // primaryColor: MyColors.whiteColor,
  // colorSchemeSeed: MyColors.primaryColor,
  iconTheme: const IconThemeData(
      color: MyColors.primaryColor
  ),
  colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      background: MyColors.scaffoldColor,
      primary: MyColors.primaryColor,
      secondary: MyColors.lightGrayColor,
      primaryContainer: MyColors.whiteColor,
      secondaryContainer: MyColors.darkWhite,
      error: MyColors.redColor,
      onPrimary: MyColors.black,
      onSecondary: MyColors.whiteColor,
      onSurface: MyColors.grayColor,
  ),
  scaffoldBackgroundColor: MyColors.scaffoldColor,
  // fontFamily: 'Roboto',
  textTheme: textTheme,
  datePickerTheme: DatePickerThemeData(
    yearForegroundColor: const MaterialStatePropertyAll(MyColors.black),
    yearStyle: TextStyle(
      fontSize: 16.sp,
    ),
  ),
  bottomAppBarTheme: BottomAppBarTheme(
    color: MyColors.bottomBarColor,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: MyColors.bottomBarColor,
    elevation: 0,
  ),
);

TextTheme? textTheme = TextTheme(
  bodySmall: TextStyle(
    color: MyColors.grayColor,
    fontSize: 12.sp,
  ),
  bodyMedium: TextStyle(
    color: MyColors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold
  ),
  bodyLarge: TextStyle(
    color: MyColors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
  ),
  titleSmall: TextStyle(
    color: MyColors.grayColor,
    fontSize: 16.sp,
  ),
);

