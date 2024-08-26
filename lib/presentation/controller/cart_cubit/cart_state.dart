import 'package:photogear_app/core/imports/app_imports.dart';

class CartState {
  final RequestState requestState;

  const CartState(
      {this.requestState = RequestState.loading,});

  CartState copyWith({
    RequestState? requestState,
  }) {
    return CartState(
      requestState: requestState ?? this.requestState,
    );
  }
}
