import 'package:photogear_app/core/imports/app_imports.dart';

class FavoriteState {
  final RequestState requestState;

  const FavoriteState(
      {this.requestState = RequestState.loading,});

  FavoriteState copyWith({
    RequestState? requestState,
  }) {
    return FavoriteState(
      requestState: requestState ?? this.requestState,
    );
  }
}
