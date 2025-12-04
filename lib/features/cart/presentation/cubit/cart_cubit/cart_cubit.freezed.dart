// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<CartModel> get carts => throw _privateConstructorUsedError;
  CartModel get cart => throw _privateConstructorUsedError;
  Map<int, int> get tempQuantities => throw _privateConstructorUsedError;
  List<UserRegistrationData> get deliveryModel =>
      throw _privateConstructorUsedError;
  double get totalCartPrice => throw _privateConstructorUsedError;
  bool get isCreatingOrder => throw _privateConstructorUsedError;
  bool get showOrderLoadingScreen => throw _privateConstructorUsedError;
  bool get showOrderSuccessScreen => throw _privateConstructorUsedError;
  bool get showOrderErrorScreen => throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      List<CartModel> carts,
      CartModel cart,
      Map<int, int> tempQuantities,
      List<UserRegistrationData> deliveryModel,
      double totalCartPrice,
      bool isCreatingOrder,
      bool showOrderLoadingScreen,
      bool showOrderSuccessScreen,
      bool showOrderErrorScreen});

  $CartModelCopyWith<$Res> get cart;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? carts = null,
    Object? cart = null,
    Object? tempQuantities = null,
    Object? deliveryModel = null,
    Object? totalCartPrice = null,
    Object? isCreatingOrder = null,
    Object? showOrderLoadingScreen = null,
    Object? showOrderSuccessScreen = null,
    Object? showOrderErrorScreen = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel,
      tempQuantities: null == tempQuantities
          ? _value.tempQuantities
          : tempQuantities // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      deliveryModel: null == deliveryModel
          ? _value.deliveryModel
          : deliveryModel // ignore: cast_nullable_to_non_nullable
              as List<UserRegistrationData>,
      totalCartPrice: null == totalCartPrice
          ? _value.totalCartPrice
          : totalCartPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isCreatingOrder: null == isCreatingOrder
          ? _value.isCreatingOrder
          : isCreatingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      showOrderLoadingScreen: null == showOrderLoadingScreen
          ? _value.showOrderLoadingScreen
          : showOrderLoadingScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showOrderSuccessScreen: null == showOrderSuccessScreen
          ? _value.showOrderSuccessScreen
          : showOrderSuccessScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showOrderErrorScreen: null == showOrderErrorScreen
          ? _value.showOrderErrorScreen
          : showOrderErrorScreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cart {
    return $CartModelCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String errorMessage,
      List<CartModel> carts,
      CartModel cart,
      Map<int, int> tempQuantities,
      List<UserRegistrationData> deliveryModel,
      double totalCartPrice,
      bool isCreatingOrder,
      bool showOrderLoadingScreen,
      bool showOrderSuccessScreen,
      bool showOrderErrorScreen});

  @override
  $CartModelCopyWith<$Res> get cart;
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? carts = null,
    Object? cart = null,
    Object? tempQuantities = null,
    Object? deliveryModel = null,
    Object? totalCartPrice = null,
    Object? isCreatingOrder = null,
    Object? showOrderLoadingScreen = null,
    Object? showOrderSuccessScreen = null,
    Object? showOrderErrorScreen = null,
  }) {
    return _then(_$CartStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      carts: null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel,
      tempQuantities: null == tempQuantities
          ? _value._tempQuantities
          : tempQuantities // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      deliveryModel: null == deliveryModel
          ? _value._deliveryModel
          : deliveryModel // ignore: cast_nullable_to_non_nullable
              as List<UserRegistrationData>,
      totalCartPrice: null == totalCartPrice
          ? _value.totalCartPrice
          : totalCartPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isCreatingOrder: null == isCreatingOrder
          ? _value.isCreatingOrder
          : isCreatingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      showOrderLoadingScreen: null == showOrderLoadingScreen
          ? _value.showOrderLoadingScreen
          : showOrderLoadingScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showOrderSuccessScreen: null == showOrderSuccessScreen
          ? _value.showOrderSuccessScreen
          : showOrderSuccessScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showOrderErrorScreen: null == showOrderErrorScreen
          ? _value.showOrderErrorScreen
          : showOrderErrorScreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {this.isLoading = false,
      this.errorMessage = '',
      final List<CartModel> carts = const [],
      required this.cart,
      final Map<int, int> tempQuantities = const {},
      final List<UserRegistrationData> deliveryModel = const [],
      this.totalCartPrice = 0.0,
      this.isCreatingOrder = false,
      this.showOrderLoadingScreen = false,
      this.showOrderSuccessScreen = false,
      this.showOrderErrorScreen = false})
      : _carts = carts,
        _tempQuantities = tempQuantities,
        _deliveryModel = deliveryModel;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  final List<CartModel> _carts;
  @override
  @JsonKey()
  List<CartModel> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  final CartModel cart;
  final Map<int, int> _tempQuantities;
  @override
  @JsonKey()
  Map<int, int> get tempQuantities {
    if (_tempQuantities is EqualUnmodifiableMapView) return _tempQuantities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tempQuantities);
  }

  final List<UserRegistrationData> _deliveryModel;
  @override
  @JsonKey()
  List<UserRegistrationData> get deliveryModel {
    if (_deliveryModel is EqualUnmodifiableListView) return _deliveryModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryModel);
  }

  @override
  @JsonKey()
  final double totalCartPrice;
  @override
  @JsonKey()
  final bool isCreatingOrder;
  @override
  @JsonKey()
  final bool showOrderLoadingScreen;
  @override
  @JsonKey()
  final bool showOrderSuccessScreen;
  @override
  @JsonKey()
  final bool showOrderErrorScreen;

  @override
  String toString() {
    return 'CartState(isLoading: $isLoading, errorMessage: $errorMessage, carts: $carts, cart: $cart, tempQuantities: $tempQuantities, deliveryModel: $deliveryModel, totalCartPrice: $totalCartPrice, isCreatingOrder: $isCreatingOrder, showOrderLoadingScreen: $showOrderLoadingScreen, showOrderSuccessScreen: $showOrderSuccessScreen, showOrderErrorScreen: $showOrderErrorScreen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._carts, _carts) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            const DeepCollectionEquality()
                .equals(other._tempQuantities, _tempQuantities) &&
            const DeepCollectionEquality()
                .equals(other._deliveryModel, _deliveryModel) &&
            (identical(other.totalCartPrice, totalCartPrice) ||
                other.totalCartPrice == totalCartPrice) &&
            (identical(other.isCreatingOrder, isCreatingOrder) ||
                other.isCreatingOrder == isCreatingOrder) &&
            (identical(other.showOrderLoadingScreen, showOrderLoadingScreen) ||
                other.showOrderLoadingScreen == showOrderLoadingScreen) &&
            (identical(other.showOrderSuccessScreen, showOrderSuccessScreen) ||
                other.showOrderSuccessScreen == showOrderSuccessScreen) &&
            (identical(other.showOrderErrorScreen, showOrderErrorScreen) ||
                other.showOrderErrorScreen == showOrderErrorScreen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      errorMessage,
      const DeepCollectionEquality().hash(_carts),
      cart,
      const DeepCollectionEquality().hash(_tempQuantities),
      const DeepCollectionEquality().hash(_deliveryModel),
      totalCartPrice,
      isCreatingOrder,
      showOrderLoadingScreen,
      showOrderSuccessScreen,
      showOrderErrorScreen);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {final bool isLoading,
      final String errorMessage,
      final List<CartModel> carts,
      required final CartModel cart,
      final Map<int, int> tempQuantities,
      final List<UserRegistrationData> deliveryModel,
      final double totalCartPrice,
      final bool isCreatingOrder,
      final bool showOrderLoadingScreen,
      final bool showOrderSuccessScreen,
      final bool showOrderErrorScreen}) = _$CartStateImpl;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  List<CartModel> get carts;
  @override
  CartModel get cart;
  @override
  Map<int, int> get tempQuantities;
  @override
  List<UserRegistrationData> get deliveryModel;
  @override
  double get totalCartPrice;
  @override
  bool get isCreatingOrder;
  @override
  bool get showOrderLoadingScreen;
  @override
  bool get showOrderSuccessScreen;
  @override
  bool get showOrderErrorScreen;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
