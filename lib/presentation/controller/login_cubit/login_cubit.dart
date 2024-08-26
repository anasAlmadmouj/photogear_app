import 'package:photogear_app/core/imports/app_imports.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailSignupController = TextEditingController();
  TextEditingController passSignupController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  int? switchLoginIndex = 0;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  // Dropdowns
  String selectedCountry = '-1'; // Default value
  String selectedCity = '-1'; // Default value



  void updateCountry(String country , BuildContext context) {
    selectedCountry = country;
    emit(state.copyWith(requestState: RequestState.success));
    maybePop(context);
  }



  void signUp({required GlobalKey<FormState> formKey , required BuildContext context})async{
    if(formKey.currentState!.validate()){
      UsersModel user = UsersModel(
        id: 1,
        name: nameController.text,
        userName: usernameController.text,
        pass: passSignupController.text,
        country: selectedCountry,
        city: selectedCity,
        street: streetController.text,
        email: emailSignupController.text,
      );
      await addUser(user);
      signIn(
          formKey: formKey,
          email: user.email,
          password: user.pass,
          context: context);
      emit(state.copyWith(requestState: RequestState.success));
      cleanSignUp(context);
    }

  }

  void updateCity(String city , BuildContext context) {
    selectedCity = city;
    emit(state.copyWith(requestState: RequestState.success));
    maybePop(context);
  }

  UsersModel? currentUser;

  void setCurrentUser(UsersModel? user) {
    currentUser = user;
    emit(state.copyWith(requestState: RequestState.success)); // Emit a state to notify listeners of the change
  }


  Future<void> saveUsersList(List<UsersModel> users) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> usersJsonList = users.map((user) => jsonEncode(user.toJson())).toList();
    await prefs.setStringList('usersList', usersJsonList);
  }

  Future<List<UsersModel>> getUsersList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? usersJsonList = prefs.getStringList('usersList');
    if (usersJsonList != null) {
      return usersJsonList.map((userJson) => UsersModel.fromJson(jsonDecode(userJson))).toList();
    } else {
      return [];
    }
  }

  Future<void> addUser(UsersModel user) async {
    List<UsersModel> users = await getUsersList();
    users.add(user);
    await saveUsersList(users);
  }

  Future<bool> signIn({
    required GlobalKey<FormState> formKey,
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    if (formKey.currentState!.validate()) {
      List<UsersModel> users = await getUsersList();
      for (UsersModel user in users) {
        if (user.email == email && user.pass == password) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('currentUser', jsonEncode(user.toJson()));
          setCurrentUser(user);

          // Postpone the navigation to ensure the widget tree is stable
          Future.microtask(() {
            navigateToAndRemoveUntil(context, const AppLayout());
          });

          clearSignIn();
          return true;
        }
      }

      // Show error if credentials are incorrect
      Future.microtask(() {
        AppCubit.get(context).showSnackBar(
          context: context,
          title: AppLocalizations.of(context)!.incorrectSignIn,
          colorState: ColorState.error,
        );
      });
    }
    return false;
  }




  Future<void> signOut(BuildContext context) async {
    await showCustomDropDownDialog(
        context: context,
        content: AppLocalizations.of(context)!.logout,
        title: AppLocalizations.of(context)!.logout,
        textAction: AppLocalizations.of(context)!.logout,
        onPressedAction: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.remove('currentUser');
          setCurrentUser(UsersModel(
              id: 0,
              name: '',
              userName: '',
              pass: '',
              country: '',
              city: '',
              street: '',
            email: '',
          ));
          navigateToAndRemoveUntil(context, const LogInScreen());
          cartList.clear();
          favoriteList.clear();
          AppCubit.get(context).changeIndexBottomBar(index: 0);
          AppCubit.get(context).backToHomeBody();
          emit(state.copyWith(requestState: RequestState.success));
        });
  }

  void changeSwitchIndex({required int? index}){
    switchLoginIndex = index;
    emit(state.copyWith(requestState: RequestState.success));
  }

  void clearSignIn(){
    switchLoginIndex = 0;
    emailController = TextEditingController();
    passController = TextEditingController();
    emit(state.copyWith(requestState: RequestState.success));
  }

  void cleanSignUp(BuildContext context){
    switchLoginIndex = 0;
    nameController.clear();
    usernameController.clear();
    emailSignupController.clear();
    passSignupController.clear();
    streetController.clear();
    updateCountry('Select Country', context);
    updateCity('Select City', context);
    emit(state.copyWith(requestState: RequestState.success));
  }

}
