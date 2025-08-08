import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/profile/data/model/card_model/card_model.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_card_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/delete_card_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_card_usecase.dart';
part 'payment_method_cubit.freezed.dart';
part 'payment_method_state.dart';

class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  PaymentMethodCubit(
      this.getCardUsecase, this.addNewCardUsecase, this.deleteCardUsecase)
      : super(const PaymentMethodState(addCard: CardModel()));

  final formKey = GlobalKey<FormState>();
  final GetCardUsecase getCardUsecase;
  final AddNewCardUsecase addNewCardUsecase;
  final DeleteCardUsecase deleteCardUsecase;
  void updateField(String field, String value) {
    final updatedUser = state.addCard.copyWith(
      cardName: field == 'cardName' ? value : state.addCard.cardName,
      cardNumber: field == 'cardNumber' ? value : state.addCard.cardNumber,
      expiryDate: field == 'expiryDate' ? value : state.addCard.expiryDate,
      cvv: field == 'cardCvv' ? value : state.addCard.cvv,
    );

    emit(state.copyWith(
      addCard: updatedUser,
    ));
  }

  void toggleMainMethod() {
    emit(state.copyWith(
      doMainMethod: !state.doMainMethod,
    ));
  }

  Future<void> submit(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      emit(state.copyWith(errorMessage: 'fillAllFields'.tr()));
      showFloatingMessageError('fillAllFields'.tr());
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await addNewCardUsecase.call(
      AddNewCardParams(cardModel: state.addCard),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
        showFloatingMessageError('somethingWentWrong'.tr());
      },
      (newCard) {
        emit(state.copyWith(
          isLoading: false,
          cards: [...state.cards, newCard],
        ));
        showFloatingMessageSuccess('paymentMethodAdded'.tr());
        context.pop();
      },
    );
  }

  Future<void> deleteCard(int cardId) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await deleteCardUsecase.call(
      DeleteCardParams(cardId: cardId),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          errorMessage: failure,
          isLoading: false,
        ));
        showFloatingMessageError('failedToDeleteCard'.tr());
      },
      (success) {
        final updateCards =
            state.cards.where((card) => card.id != cardId).toList();

        emit(state.copyWith(
          cards: updateCards,
          errorMessage: '',
          isLoading: false,
        ));

        showFloatingMessageSuccess('cardDeleted'.tr());
      },
    );
  }

  Future<void> getPaymentMethods() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getCardUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (cardsList) => emit(state.copyWith(
        isLoading: false,
        cards: cardsList,
      )),
    );
  }
}
