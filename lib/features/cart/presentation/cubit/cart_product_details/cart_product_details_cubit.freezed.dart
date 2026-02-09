// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartProductDetailsState {
  List<String> get categories => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool? get isFavourites => throw _privateConstructorUsedError;
  bool get isCart => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  List<ProductModel> get ownerProducts => throw _privateConstructorUsedError;
  List<CartModel> get carts => throw _privateConstructorUsedError;
  Set<int> get selectedIndices => throw _privateConstructorUsedError;
  List<String> get searchedItems => throw _privateConstructorUsedError;
  int get selectedCategoryIndex => throw _privateConstructorUsedError;
  int get currentImageIndex => throw _privateConstructorUsedError;
  PageController? get pageController => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;
  CartModel get cartResponse => throw _privateConstructorUsedError;
  double get totalCartPrice => throw _privateConstructorUsedError;
  bool get isJoiningStream => throw _privateConstructorUsedError;

  /// Create a copy of CartProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductDetailsStateCopyWith<CartProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductDetailsStateCopyWith<$Res> {
  factory $CartProductDetailsStateCopyWith(CartProductDetailsState value,
          $Res Function(CartProductDetailsState) then) =
      _$CartProductDetailsStateCopyWithImpl<$Res, CartProductDetailsState>;
  @useResult
  $Res call(
      {List<String> categories,
      int selectedIndex,
      bool isLoading,
      bool success,
      bool? isFavourites,
      bool isCart,
      String errorMessage,
      List<ProductModel> products,
      List<ProductModel> ownerProducts,
      List<CartModel> carts,
      Set<int> selectedIndices,
      List<String> searchedItems,
      int selectedCategoryIndex,
      int currentImageIndex,
      PageController? pageController,
      ProductModel product,
      CartModel cartResponse,
      double totalCartPrice,
      bool isJoiningStream});

  $ProductModelCopyWith<$Res> get product;
  $CartModelCopyWith<$Res> get cartResponse;
}

/// @nodoc
class _$CartProductDetailsStateCopyWithImpl<$Res,
        $Val extends CartProductDetailsState>
    implements $CartProductDetailsStateCopyWith<$Res> {
  _$CartProductDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedIndex = null,
    Object? isLoading = null,
    Object? success = null,
    Object? isFavourites = freezed,
    Object? isCart = null,
    Object? errorMessage = null,
    Object? products = null,
    Object? ownerProducts = null,
    Object? carts = null,
    Object? selectedIndices = null,
    Object? searchedItems = null,
    Object? selectedCategoryIndex = null,
    Object? currentImageIndex = null,
    Object? pageController = freezed,
    Object? product = null,
    Object? cartResponse = null,
    Object? totalCartPrice = null,
    Object? isJoiningStream = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavourites: freezed == isFavourites
          ? _value.isFavourites
          : isFavourites // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCart: null == isCart
          ? _value.isCart
          : isCart // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      ownerProducts: null == ownerProducts
          ? _value.ownerProducts
          : ownerProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      selectedIndices: null == selectedIndices
          ? _value.selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      searchedItems: null == searchedItems
          ? _value.searchedItems
          : searchedItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageController: freezed == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController?,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      cartResponse: null == cartResponse
          ? _value.cartResponse
          : cartResponse // ignore: cast_nullable_to_non_nullable
              as CartModel,
      totalCartPrice: null == totalCartPrice
          ? _value.totalCartPrice
          : totalCartPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isJoiningStream: null == isJoiningStream
          ? _value.isJoiningStream
          : isJoiningStream // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of CartProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of CartProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cartResponse {
    return $CartModelCopyWith<$Res>(_value.cartResponse, (value) {
      return _then(_value.copyWith(cartResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartProductDetailsStateImplCopyWith<$Res>
    implements $CartProductDetailsStateCopyWith<$Res> {
  factory _$$CartProductDetailsStateImplCopyWith(
          _$CartProductDetailsStateImpl value,
          $Res Function(_$CartProductDetailsStateImpl) then) =
      __$$CartProductDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> categories,
      int selectedIndex,
      bool isLoading,
      bool success,
      bool? isFavourites,
      bool isCart,
      String errorMessage,
      List<ProductModel> products,
      List<ProductModel> ownerProducts,
      List<CartModel> carts,
      Set<int> selectedIndices,
      List<String> searchedItems,
      int selectedCategoryIndex,
      int currentImageIndex,
      PageController? pageController,
      ProductModel product,
      CartModel cartResponse,
      double totalCartPrice,
      bool isJoiningStream});

  @override
  $ProductModelCopyWith<$Res> get product;
  @override
  $CartModelCopyWith<$Res> get cartResponse;
}

/// @nodoc
class __$$CartProductDetailsStateImplCopyWithImpl<$Res>
    extends _$CartProductDetailsStateCopyWithImpl<$Res,
        _$CartProductDetailsStateImpl>
    implements _$$CartProductDetailsStateImplCopyWith<$Res> {
  __$$CartProductDetailsStateImplCopyWithImpl(
      _$CartProductDetailsStateImpl _value,
      $Res Function(_$CartProductDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedIndex = null,
    Object? isLoading = null,
    Object? success = null,
    Object? isFavourites = freezed,
    Object? isCart = null,
    Object? errorMessage = null,
    Object? products = null,
    Object? ownerProducts = null,
    Object? carts = null,
    Object? selectedIndices = null,
    Object? searchedItems = null,
    Object? selectedCategoryIndex = null,
    Object? currentImageIndex = null,
    Object? pageController = freezed,
    Object? product = null,
    Object? cartResponse = null,
    Object? totalCartPrice = null,
    Object? isJoiningStream = null,
  }) {
    return _then(_$CartProductDetailsStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavourites: freezed == isFavourites
          ? _value.isFavourites
          : isFavourites // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCart: null == isCart
          ? _value.isCart
          : isCart // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      ownerProducts: null == ownerProducts
          ? _value._ownerProducts
          : ownerProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      carts: null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      selectedIndices: null == selectedIndices
          ? _value._selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      searchedItems: null == searchedItems
          ? _value._searchedItems
          : searchedItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageController: freezed == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController?,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      cartResponse: null == cartResponse
          ? _value.cartResponse
          : cartResponse // ignore: cast_nullable_to_non_nullable
              as CartModel,
      totalCartPrice: null == totalCartPrice
          ? _value.totalCartPrice
          : totalCartPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isJoiningStream: null == isJoiningStream
          ? _value.isJoiningStream
          : isJoiningStream // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CartProductDetailsStateImpl implements _CartProductDetailsState {
  const _$CartProductDetailsStateImpl(
      {required final List<String> categories,
      required this.selectedIndex,
      this.isLoading = false,
      this.success = false,
      this.isFavourites,
      this.isCart = false,
      this.errorMessage = '',
      final List<ProductModel> products = const [],
      final List<ProductModel> ownerProducts = const [],
      final List<CartModel> carts = const [],
      final Set<int> selectedIndices = const {},
      final List<String> searchedItems = const [],
      this.selectedCategoryIndex = 0,
      this.currentImageIndex = 0,
      this.pageController,
      required this.product,
      required this.cartResponse,
      this.totalCartPrice = 0.0,
      this.isJoiningStream = false})
      : _categories = categories,
        _products = products,
        _ownerProducts = ownerProducts,
        _carts = carts,
        _selectedIndices = selectedIndices,
        _searchedItems = searchedItems;

  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final int selectedIndex;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool success;
  @override
  final bool? isFavourites;
  @override
  @JsonKey()
  final bool isCart;
  @override
  @JsonKey()
  final String errorMessage;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductModel> _ownerProducts;
  @override
  @JsonKey()
  List<ProductModel> get ownerProducts {
    if (_ownerProducts is EqualUnmodifiableListView) return _ownerProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ownerProducts);
  }

  final List<CartModel> _carts;
  @override
  @JsonKey()
  List<CartModel> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  final Set<int> _selectedIndices;
  @override
  @JsonKey()
  Set<int> get selectedIndices {
    if (_selectedIndices is EqualUnmodifiableSetView) return _selectedIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedIndices);
  }

  final List<String> _searchedItems;
  @override
  @JsonKey()
  List<String> get searchedItems {
    if (_searchedItems is EqualUnmodifiableListView) return _searchedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedItems);
  }

  @override
  @JsonKey()
  final int selectedCategoryIndex;
  @override
  @JsonKey()
  final int currentImageIndex;
  @override
  final PageController? pageController;
  @override
  final ProductModel product;
  @override
  final CartModel cartResponse;
  @override
  @JsonKey()
  final double totalCartPrice;
  @override
  @JsonKey()
  final bool isJoiningStream;

  @override
  String toString() {
    return 'CartProductDetailsState(categories: $categories, selectedIndex: $selectedIndex, isLoading: $isLoading, success: $success, isFavourites: $isFavourites, isCart: $isCart, errorMessage: $errorMessage, products: $products, ownerProducts: $ownerProducts, carts: $carts, selectedIndices: $selectedIndices, searchedItems: $searchedItems, selectedCategoryIndex: $selectedCategoryIndex, currentImageIndex: $currentImageIndex, pageController: $pageController, product: $product, cartResponse: $cartResponse, totalCartPrice: $totalCartPrice, isJoiningStream: $isJoiningStream)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductDetailsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.isFavourites, isFavourites) ||
                other.isFavourites == isFavourites) &&
            (identical(other.isCart, isCart) || other.isCart == isCart) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._ownerProducts, _ownerProducts) &&
            const DeepCollectionEquality().equals(other._carts, _carts) &&
            const DeepCollectionEquality()
                .equals(other._selectedIndices, _selectedIndices) &&
            const DeepCollectionEquality()
                .equals(other._searchedItems, _searchedItems) &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            (identical(other.currentImageIndex, currentImageIndex) ||
                other.currentImageIndex == currentImageIndex) &&
            (identical(other.pageController, pageController) ||
                other.pageController == pageController) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.cartResponse, cartResponse) ||
                other.cartResponse == cartResponse) &&
            (identical(other.totalCartPrice, totalCartPrice) ||
                other.totalCartPrice == totalCartPrice) &&
            (identical(other.isJoiningStream, isJoiningStream) ||
                other.isJoiningStream == isJoiningStream));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_categories),
        selectedIndex,
        isLoading,
        success,
        isFavourites,
        isCart,
        errorMessage,
        const DeepCollectionEquality().hash(_products),
        const DeepCollectionEquality().hash(_ownerProducts),
        const DeepCollectionEquality().hash(_carts),
        const DeepCollectionEquality().hash(_selectedIndices),
        const DeepCollectionEquality().hash(_searchedItems),
        selectedCategoryIndex,
        currentImageIndex,
        pageController,
        product,
        cartResponse,
        totalCartPrice,
        isJoiningStream
      ]);

  /// Create a copy of CartProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductDetailsStateImplCopyWith<_$CartProductDetailsStateImpl>
      get copyWith => __$$CartProductDetailsStateImplCopyWithImpl<
          _$CartProductDetailsStateImpl>(this, _$identity);
}

abstract class _CartProductDetailsState implements CartProductDetailsState {
  const factory _CartProductDetailsState(
      {required final List<String> categories,
      required final int selectedIndex,
      final bool isLoading,
      final bool success,
      final bool? isFavourites,
      final bool isCart,
      final String errorMessage,
      final List<ProductModel> products,
      final List<ProductModel> ownerProducts,
      final List<CartModel> carts,
      final Set<int> selectedIndices,
      final List<String> searchedItems,
      final int selectedCategoryIndex,
      final int currentImageIndex,
      final PageController? pageController,
      required final ProductModel product,
      required final CartModel cartResponse,
      final double totalCartPrice,
      final bool isJoiningStream}) = _$CartProductDetailsStateImpl;

  @override
  List<String> get categories;
  @override
  int get selectedIndex;
  @override
  bool get isLoading;
  @override
  bool get success;
  @override
  bool? get isFavourites;
  @override
  bool get isCart;
  @override
  String get errorMessage;
  @override
  List<ProductModel> get products;
  @override
  List<ProductModel> get ownerProducts;
  @override
  List<CartModel> get carts;
  @override
  Set<int> get selectedIndices;
  @override
  List<String> get searchedItems;
  @override
  int get selectedCategoryIndex;
  @override
  int get currentImageIndex;
  @override
  PageController? get pageController;
  @override
  ProductModel get product;
  @override
  CartModel get cartResponse;
  @override
  double get totalCartPrice;
  @override
  bool get isJoiningStream;

  /// Create a copy of CartProductDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductDetailsStateImplCopyWith<_$CartProductDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
