import 'package:photogear_app/core/imports/app_imports.dart';

class LoginState {
  final RequestState requestState;

  const LoginState(
      {this.requestState = RequestState.loading,});

  LoginState copyWith({
    RequestState? requestState,
  }) {
    return LoginState(
      requestState: requestState ?? this.requestState,
    );
  }
}
