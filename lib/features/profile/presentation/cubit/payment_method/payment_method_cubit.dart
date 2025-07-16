import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_cubit.freezed.dart';
part 'payment_method_state.dart';

class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  PaymentMethodCubit() : super(const PaymentMethodState());

  final formKey = GlobalKey<FormState>();
  final cardDateController = TextEditingController();
  final cardNumberController = TextEditingController();

  void updateField(String field, String value) {
    switch (field) {
      case 'cardNumber':
        cardNumberController.text = value;
        emit(state.copyWith(cardNumber: value));
        break;

      case 'cardName':
        emit(state.copyWith(cardName: value));
        break;
      case 'cardDate':
        cardDateController.text = value;
        emit(state.copyWith(cardDate: value));
        break;
      case 'cardCvv':
        emit(state.copyWith(cardCvv: value));
        break;
    }
  }

  void toggleMainMethod() {
    emit(state.copyWith(
      doMainMethod: !state.doMainMethod,
    ));
  }

  // void submit(BuildContext context, UserRegistrationData baseData) {
  //   if (!formKey.currentState!.validate()) return;

  //   final updatedData = baseData.copyWith(
  //     country: state.,
  //     city: state.city,
  //     street: state.street,
  //     house: state.house,
  //     apartment: state.apartment,
  //     entrance: state.entrance,
  //     index: state.index,
  //   );

  //   // context.push(
  //   //   AppRoutes.interests,
  //   //   extra: updatedData, // must be a UserRegistrationData instance
  //   // );
  // }
}
