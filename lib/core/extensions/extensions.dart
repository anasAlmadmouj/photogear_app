import 'package:photogear_app/core/imports/app_imports.dart';

extension EmptySpace on num {
  SizedBox get height => SizedBox(
    height: toDouble().h,
  );

  SizedBox get width => SizedBox(
    width: toDouble().w,
  );
}