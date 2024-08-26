import 'package:photogear_app/core/imports/app_imports.dart';

class AppState {
  final RequestState requestState;

  const AppState(
      {this.requestState = RequestState.loading,});

  AppState copyWith({
    RequestState? requestState,
  }) {
    return AppState(
      requestState: requestState ?? this.requestState,
    );
  }
}
