// rates_activity_cubit.dart
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/activity/data/models/auction_product.dart';
import 'package:image_picker/image_picker.dart';

part 'my_goods_cubit.freezed.dart';
part 'my_goods_state.dart';

class MyGoodsCubit extends Cubit<MyGoodsState> {
  MyGoodsCubit()
      : super(const MyGoodsState(selectedCategoryIndex: 0, products: [])) {
    loadProducts();
  }

  void changeCategory(int index) {
    emit(state.copyWith(selectedCategoryIndex: index));
  }

  Future<void> pickImage() async {
    if (state.selectedImages.length >= 8) return;

    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
    );

    if (pickedFile != null) {
      final updatedList = List<File>.from(state.selectedImages)
        ..add(File(pickedFile.path));
      emit(state.copyWith(selectedImages: updatedList));
    }
  }

  void toggleSelfDestruction() {
    emit(state.copyWith(
      selfDestruction: !state.selfDestruction,
    ));
  }

  void togglePickupFree() {
    emit(state.copyWith(
      pickupFree: !state.pickupFree,
    ));
  }

  void toggleBookParticipation() {
    emit(state.copyWith(
      bookParticipation: !state.bookParticipation,
    ));
  }

  int currentTab = 0;
  void changeTab(int index) {
    currentTab = index;
    emit(state.copyWith(selectedButtonIndex: index));
  }

  void loadProducts() async {
    emit(state.copyWith(
      products: List.generate(
        5,
        (index) => AuctionProduct(
          id: '$index',
          title: 'Product $index',
          description: 'Description $index',
          price: '${100 * (index + 1)}',
          images: [],
          bidders: {},
          isSold: index % 2 == 0,
          ownerId: 'owner_$index',
        ),
      ),
    ));
  }

  void increaseQuantity() {
    if (state.quantity < 999) {
      emit(state.copyWith(quantity: state.quantity + 1));
    }
  }

  void decreaseQuantity() {
    if (state.quantity > 1) {
      emit(state.copyWith(quantity: state.quantity - 1));
    }
  }
}
