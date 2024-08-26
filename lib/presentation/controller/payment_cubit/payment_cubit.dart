import 'package:photogear_app/core/imports/app_imports.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(const PaymentState());

  static PaymentCubit get(context) => BlocProvider.of(context);

  String? payRadioValue = 'debit';
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = true;
  OutlineInputBorder? border;
  bool isFast = false;
  final GlobalKey<FormState> visaFormKey = GlobalKey<FormState>();


  void onAddVisaValidate(BuildContext context) {
    if (visaFormKey.currentState!.validate()) {
      for (int index = 0 ; index < cartList.length; index++){
        CartCubit.get(context).addToMyHistory(index: index);
      }
      cartList.clear();
      emit(state.copyWith(requestState: RequestState.success));

      navigateToAndRemoveUntil(context, const DoneScreen());
    } else {
      null;
    }
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    cardNumber = creditCardModel!.cardNumber;
    expiryDate = creditCardModel.expiryDate;
    cardHolderName = creditCardModel.cardHolderName;
    cvvCode = creditCardModel.cvvCode;
    isCvvFocused = creditCardModel.isCvvFocused;
    emit(state.copyWith(requestState: RequestState.success));
  }

  void changeIsFastSwitch(bool value){
    isFast = value;
    emit(state.copyWith(requestState: RequestState.success));
  }

  void changeRadioPayValue(String? newVal , BuildContext context) {
    PaymentCubit.get(context).payRadioValue = newVal;
    emit(state.copyWith(requestState: RequestState.success));
  }

  void paymentClear(){
    payRadioValue = 'debit';
    cardNumber = '';
    expiryDate = '';
    cardHolderName = '';
    cvvCode = '';
    isCvvFocused = false;
    useGlassMorphism = false;
    useBackgroundImage = true;
    isFast = false;
    emit(state.copyWith(requestState: RequestState.success));
  }

}
