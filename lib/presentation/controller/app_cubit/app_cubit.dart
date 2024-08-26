import 'package:photogear_app/core/imports/app_imports.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());
  static AppCubit get(context) => BlocProvider.of(context);

  int bottomBarIndex = 0;
  int? bodyIndex = categoriesList.length + 1;
  Widget homeBody = const HomeBody();
  bool isDark = false;
  String? languageValue = 'English';


  void changeThem(bool value) {
    isDark = value;
    CacheHelper.saveData(key: spIsDark, value: value);
    emit(state.copyWith(requestState: RequestState.success));
  }

  void showSnackBar({required BuildContext context, required String title, required ColorState colorState}) {
    final scaffold = ScaffoldMessenger.of(context);
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    scaffold.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating, // Add this line
        duration: const Duration(seconds: 1),
        backgroundColor: chooseSnackColor(colorState , context),
        content: Text(title , style: Theme.of(context).textTheme.titleSmall!.copyWith(color: MyColors.darkWhite , fontSize: 16.sp)),
        action: SnackBarAction(
          label: AppLocalizations.of(context)!.close,
          onPressed: () => scaffold.hideCurrentSnackBar(),
          textColor: MyColors.darkWhite,
        ),
      ),
    );
  }

  void changeLanguageValue(String? value) {
    languageValue = value;
    CacheHelper.saveData(key: spLanguage, value: value);
    emit(state.copyWith(requestState: RequestState.success));
  }

  void getIsDarkValue() {
    isDark = CacheHelper.getData(key: spIsDark) ?? false;
    emit(state.copyWith(requestState: RequestState.success));
  }

  changeIndexBottomBar({required int index}){
    bottomBarIndex = index;
    emit(state.copyWith(requestState: RequestState.success));

  }

  void changeHomeBody({required int index}) {
    if (bodyIndex == index) {
      homeBody = homeBodyList[index];
    } else {
      homeBody = const HomeBody();
    }
    emit(state.copyWith(requestState: RequestState.success));
  }

  void backToHomeBody() {
    homeBody = const HomeBody();
    bodyIndex = categoriesList.length + 1;
    emit(state.copyWith(requestState: RequestState.success));
  }

  void suggestionsOnTap(BuildContext context,ItemModel itemModel){
    List<ItemModel> list =
      TypeCategory.getTypeList(itemModel.typeCategory);

    var matchingItemIndex = list.indexWhere(
          (element) => element == itemModel,
    );
     navigateTo(context, ItemDetailScreen(list: list, index:matchingItemIndex ));

  }


  String getLimitedCharacters(String text) {
    if (text.length > 20) {
      return '${text.substring(0, 20)}...';
    }
    return text;
  }

  void changeIsDark(bool newVal) {
    isDark = newVal;
    emit(state.copyWith(requestState: RequestState.success));
  }

  String? validateFormField(var value, String? message) {
    if (value.isEmpty || value == null) {
      return '$message';
    }
    return null;
  }

  void backToHome({required BuildContext context}){
    bottomBarIndex = 0;
    emit(state.copyWith(requestState: RequestState.success));
  }
}

