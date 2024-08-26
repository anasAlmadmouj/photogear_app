import 'package:photogear_app/core/constants/colors/my_colors.dart';
import 'package:photogear_app/core/imports/app_imports.dart';

ThemeData themeDataDarkEnglish() => ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      // primaryColor: Colors.grey.shade300,
      // colorSchemeSeed: MyColors.primaryColor,
      iconTheme: const IconThemeData(
        color: MyColors.darkWhite
      ),
      colorScheme: const ColorScheme.dark(
          brightness: Brightness.dark,
          background: MyColors.scaffoldColorDark,
          primary: MyColors.primaryColor,
          secondary: MyColors.lightGrayColor,
          primaryContainer: MyColors.containerColorDark,
          secondaryContainer: MyColors.containerColorDark,
          error: MyColors.redColor,
          onPrimary: MyColors.whiteColor,
        onSurface: MyColors.lightGrayColor,
      ),
      // fontFamily: 'Roboto',
      textTheme: darkTextTheme,
      datePickerTheme: DatePickerThemeData(
        yearForegroundColor:
            const MaterialStatePropertyAll(MyColors.whiteColor),
        yearStyle: TextStyle(
          fontSize: 16.sp,
        ),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: MyColors.darkBottomBarColor,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: MyColors.containerColorDark,
        elevation: 0,
      ),
    );

ThemeData themeDataDarkArabic() => ThemeData(
      useMaterial3: true,
      // primaryColor: Colors.grey.shade300,
      // colorSchemeSeed: MyColors.primaryColor,
  iconTheme: const IconThemeData(
      color: MyColors.darkWhite
  ),
      scaffoldBackgroundColor: MyColors.scaffoldColorDark,
      colorScheme: const ColorScheme.light(
        brightness: Brightness.dark,
        background: MyColors.scaffoldColorDark,
        primary: MyColors.primaryColor,
        secondary: MyColors.lightGrayColor,
        primaryContainer: MyColors.containerColorDark,
        secondaryContainer: MyColors.containerColorDark,
        error: MyColors.redColor,
        onPrimary: MyColors.darkWhite,
        onSecondary: MyColors.black,
        onSurface: MyColors.lightGrayColor,
      ),
      // fontFamily: 'NotoNaskhArabic',
      textTheme: darkTextTheme,
      datePickerTheme: DatePickerThemeData(
        yearForegroundColor:
            const MaterialStatePropertyAll(MyColors.whiteColor),
        yearStyle: TextStyle(
          fontSize: 16.sp,
        ),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: MyColors.darkBottomBarColor,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: MyColors.containerColorDark,
        elevation: 0,
      ),
    );

TextTheme? darkTextTheme = TextTheme(
  bodySmall: TextStyle(
    color: MyColors.whiteColor,
    fontSize: 12.sp,
  ),
  bodyMedium: TextStyle(
      color: MyColors.whiteColor, fontSize: 20.sp, fontWeight: FontWeight.bold),
  bodyLarge: TextStyle(
    color: MyColors.primaryColor,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
  ),
  titleSmall: TextStyle(
    color: MyColors.lightGrayColor,
    fontSize: 16.sp,
  ),
);
