import 'package:photogear_app/core/imports/app_imports.dart';

class PaymentState {
  final RequestState requestState;

  const PaymentState(
      {this.requestState = RequestState.loading,});

  PaymentState copyWith({
    RequestState? requestState,
  }) {
    return PaymentState(
      requestState: requestState ?? this.requestState,
    );
  }
}
