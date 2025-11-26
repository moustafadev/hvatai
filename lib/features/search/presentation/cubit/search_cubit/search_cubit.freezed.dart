// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  List<String> get categories => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasLoadedInitial => throw _privateConstructorUsedError;
  bool get isFavourites => throw _privateConstructorUsedError;
  bool get isCart => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  List<SearchLiveStreamModel> get liveStreams =>
      throw _privateConstructorUsedError;
  List<UserRegistrationData> get users => throw _privateConstructorUsedError;
  List<CategoryData> get parentCategories => throw _privateConstructorUsedError;
  List<CategoryData> get childCategories => throw _privateConstructorUsedError;
  bool get hasNoResults => throw _privateConstructorUsedError;
  List<CartModel> get carts => throw _privateConstructorUsedError;
  List<String> get selectedInterests => throw _privateConstructorUsedError;
  Set<int> get selectedIndices => throw _privateConstructorUsedError;
  List<String> get searchedItems => throw _privateConstructorUsedError;
  int get selectedCategoryIndex => throw _privateConstructorUsedError;
  int get currentImageIndex => throw _privateConstructorUsedError;
  PageController? get pageController => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;
  cart.CartModel get cartResponse => throw _privateConstructorUsedError;
  double get totalCartPrice => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<String> categories,
      int selectedIndex,
      String query,
      bool isLoading,
      bool hasLoadedInitial,
      bool isFavourites,
      bool isCart,
      String errorMessage,
      List<ProductModel> products,
      List<SearchLiveStreamModel> liveStreams,
      List<UserRegistrationData> users,
      List<CategoryData> parentCategories,
      List<CategoryData> childCategories,
      bool hasNoResults,
      List<CartModel> carts,
      List<String> selectedInterests,
      Set<int> selectedIndices,
      List<String> searchedItems,
      int selectedCategoryIndex,
      int currentImageIndex,
      PageController? pageController,
      ProductModel product,
      cart.CartModel cartResponse,
      double totalCartPrice});

  $ProductModelCopyWith<$Res> get product;
  $CartModelCopyWith<$Res> get cartResponse;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedIndex = null,
    Object? query = null,
    Object? isLoading = null,
    Object? hasLoadedInitial = null,
    Object? isFavourites = null,
    Object? isCart = null,
    Object? errorMessage = null,
    Object? products = null,
    Object? liveStreams = null,
    Object? users = null,
    Object? parentCategories = null,
    Object? childCategories = null,
    Object? hasNoResults = null,
    Object? carts = null,
    Object? selectedInterests = null,
    Object? selectedIndices = null,
    Object? searchedItems = null,
    Object? selectedCategoryIndex = null,
    Object? currentImageIndex = null,
    Object? pageController = freezed,
    Object? product = null,
    Object? cartResponse = null,
    Object? totalCartPrice = null,
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
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLoadedInitial: null == hasLoadedInitial
          ? _value.hasLoadedInitial
          : hasLoadedInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavourites: null == isFavourites
          ? _value.isFavourites
          : isFavourites // ignore: cast_nullable_to_non_nullable
              as bool,
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
      liveStreams: null == liveStreams
          ? _value.liveStreams
          : liveStreams // ignore: cast_nullable_to_non_nullable
              as List<SearchLiveStreamModel>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserRegistrationData>,
      parentCategories: null == parentCategories
          ? _value.parentCategories
          : parentCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>,
      childCategories: null == childCategories
          ? _value.childCategories
          : childCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>,
      hasNoResults: null == hasNoResults
          ? _value.hasNoResults
          : hasNoResults // ignore: cast_nullable_to_non_nullable
              as bool,
      carts: null == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      selectedInterests: null == selectedInterests
          ? _value.selectedInterests
          : selectedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
              as cart.CartModel,
      totalCartPrice: null == totalCartPrice
          ? _value.totalCartPrice
          : totalCartPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of SearchState
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
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> categories,
      int selectedIndex,
      String query,
      bool isLoading,
      bool hasLoadedInitial,
      bool isFavourites,
      bool isCart,
      String errorMessage,
      List<ProductModel> products,
      List<SearchLiveStreamModel> liveStreams,
      List<UserRegistrationData> users,
      List<CategoryData> parentCategories,
      List<CategoryData> childCategories,
      bool hasNoResults,
      List<CartModel> carts,
      List<String> selectedInterests,
      Set<int> selectedIndices,
      List<String> searchedItems,
      int selectedCategoryIndex,
      int currentImageIndex,
      PageController? pageController,
      ProductModel product,
      cart.CartModel cartResponse,
      double totalCartPrice});

  @override
  $ProductModelCopyWith<$Res> get product;
  @override
  $CartModelCopyWith<$Res> get cartResponse;
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedIndex = null,
    Object? query = null,
    Object? isLoading = null,
    Object? hasLoadedInitial = null,
    Object? isFavourites = null,
    Object? isCart = null,
    Object? errorMessage = null,
    Object? products = null,
    Object? liveStreams = null,
    Object? users = null,
    Object? parentCategories = null,
    Object? childCategories = null,
    Object? hasNoResults = null,
    Object? carts = null,
    Object? selectedInterests = null,
    Object? selectedIndices = null,
    Object? searchedItems = null,
    Object? selectedCategoryIndex = null,
    Object? currentImageIndex = null,
    Object? pageController = freezed,
    Object? product = null,
    Object? cartResponse = null,
    Object? totalCartPrice = null,
  }) {
    return _then(_$SearchStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLoadedInitial: null == hasLoadedInitial
          ? _value.hasLoadedInitial
          : hasLoadedInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavourites: null == isFavourites
          ? _value.isFavourites
          : isFavourites // ignore: cast_nullable_to_non_nullable
              as bool,
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
      liveStreams: null == liveStreams
          ? _value._liveStreams
          : liveStreams // ignore: cast_nullable_to_non_nullable
              as List<SearchLiveStreamModel>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserRegistrationData>,
      parentCategories: null == parentCategories
          ? _value._parentCategories
          : parentCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>,
      childCategories: null == childCategories
          ? _value._childCategories
          : childCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>,
      hasNoResults: null == hasNoResults
          ? _value.hasNoResults
          : hasNoResults // ignore: cast_nullable_to_non_nullable
              as bool,
      carts: null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      selectedInterests: null == selectedInterests
          ? _value._selectedInterests
          : selectedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
              as cart.CartModel,
      totalCartPrice: null == totalCartPrice
          ? _value.totalCartPrice
          : totalCartPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required final List<String> categories,
      required this.selectedIndex,
      this.query = '',
      this.isLoading = false,
      this.hasLoadedInitial = false,
      this.isFavourites = false,
      this.isCart = false,
      this.errorMessage = '',
      final List<ProductModel> products = const [],
      final List<SearchLiveStreamModel> liveStreams = const [],
      final List<UserRegistrationData> users = const [],
      final List<CategoryData> parentCategories = const [],
      final List<CategoryData> childCategories = const [],
      this.hasNoResults = false,
      final List<CartModel> carts = const [],
      final List<String> selectedInterests = const [],
      final Set<int> selectedIndices = const {},
      final List<String> searchedItems = const [],
      this.selectedCategoryIndex = 0,
      this.currentImageIndex = 0,
      this.pageController,
      required this.product,
      required this.cartResponse,
      this.totalCartPrice = 0.0})
      : _categories = categories,
        _products = products,
        _liveStreams = liveStreams,
        _users = users,
        _parentCategories = parentCategories,
        _childCategories = childCategories,
        _carts = carts,
        _selectedInterests = selectedInterests,
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
  final String query;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasLoadedInitial;
  @override
  @JsonKey()
  final bool isFavourites;
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

  final List<SearchLiveStreamModel> _liveStreams;
  @override
  @JsonKey()
  List<SearchLiveStreamModel> get liveStreams {
    if (_liveStreams is EqualUnmodifiableListView) return _liveStreams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_liveStreams);
  }

  final List<UserRegistrationData> _users;
  @override
  @JsonKey()
  List<UserRegistrationData> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<CategoryData> _parentCategories;
  @override
  @JsonKey()
  List<CategoryData> get parentCategories {
    if (_parentCategories is EqualUnmodifiableListView)
      return _parentCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parentCategories);
  }

  final List<CategoryData> _childCategories;
  @override
  @JsonKey()
  List<CategoryData> get childCategories {
    if (_childCategories is EqualUnmodifiableListView) return _childCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childCategories);
  }

  @override
  @JsonKey()
  final bool hasNoResults;
  final List<CartModel> _carts;
  @override
  @JsonKey()
  List<CartModel> get carts {
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  final List<String> _selectedInterests;
  @override
  @JsonKey()
  List<String> get selectedInterests {
    if (_selectedInterests is EqualUnmodifiableListView)
      return _selectedInterests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedInterests);
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
  final cart.CartModel cartResponse;
  @override
  @JsonKey()
  final double totalCartPrice;

  @override
  String toString() {
    return 'SearchState(categories: $categories, selectedIndex: $selectedIndex, query: $query, isLoading: $isLoading, hasLoadedInitial: $hasLoadedInitial, isFavourites: $isFavourites, isCart: $isCart, errorMessage: $errorMessage, products: $products, liveStreams: $liveStreams, users: $users, parentCategories: $parentCategories, childCategories: $childCategories, hasNoResults: $hasNoResults, carts: $carts, selectedInterests: $selectedInterests, selectedIndices: $selectedIndices, searchedItems: $searchedItems, selectedCategoryIndex: $selectedCategoryIndex, currentImageIndex: $currentImageIndex, pageController: $pageController, product: $product, cartResponse: $cartResponse, totalCartPrice: $totalCartPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasLoadedInitial, hasLoadedInitial) ||
                other.hasLoadedInitial == hasLoadedInitial) &&
            (identical(other.isFavourites, isFavourites) ||
                other.isFavourites == isFavourites) &&
            (identical(other.isCart, isCart) || other.isCart == isCart) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._liveStreams, _liveStreams) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._parentCategories, _parentCategories) &&
            const DeepCollectionEquality()
                .equals(other._childCategories, _childCategories) &&
            (identical(other.hasNoResults, hasNoResults) ||
                other.hasNoResults == hasNoResults) &&
            const DeepCollectionEquality().equals(other._carts, _carts) &&
            const DeepCollectionEquality()
                .equals(other._selectedInterests, _selectedInterests) &&
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
                other.totalCartPrice == totalCartPrice));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_categories),
        selectedIndex,
        query,
        isLoading,
        hasLoadedInitial,
        isFavourites,
        isCart,
        errorMessage,
        const DeepCollectionEquality().hash(_products),
        const DeepCollectionEquality().hash(_liveStreams),
        const DeepCollectionEquality().hash(_users),
        const DeepCollectionEquality().hash(_parentCategories),
        const DeepCollectionEquality().hash(_childCategories),
        hasNoResults,
        const DeepCollectionEquality().hash(_carts),
        const DeepCollectionEquality().hash(_selectedInterests),
        const DeepCollectionEquality().hash(_selectedIndices),
        const DeepCollectionEquality().hash(_searchedItems),
        selectedCategoryIndex,
        currentImageIndex,
        pageController,
        product,
        cartResponse,
        totalCartPrice
      ]);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<String> categories,
      required final int selectedIndex,
      final String query,
      final bool isLoading,
      final bool hasLoadedInitial,
      final bool isFavourites,
      final bool isCart,
      final String errorMessage,
      final List<ProductModel> products,
      final List<SearchLiveStreamModel> liveStreams,
      final List<UserRegistrationData> users,
      final List<CategoryData> parentCategories,
      final List<CategoryData> childCategories,
      final bool hasNoResults,
      final List<CartModel> carts,
      final List<String> selectedInterests,
      final Set<int> selectedIndices,
      final List<String> searchedItems,
      final int selectedCategoryIndex,
      final int currentImageIndex,
      final PageController? pageController,
      required final ProductModel product,
      required final cart.CartModel cartResponse,
      final double totalCartPrice}) = _$SearchStateImpl;

  @override
  List<String> get categories;
  @override
  int get selectedIndex;
  @override
  String get query;
  @override
  bool get isLoading;
  @override
  bool get hasLoadedInitial;
  @override
  bool get isFavourites;
  @override
  bool get isCart;
  @override
  String get errorMessage;
  @override
  List<ProductModel> get products;
  @override
  List<SearchLiveStreamModel> get liveStreams;
  @override
  List<UserRegistrationData> get users;
  @override
  List<CategoryData> get parentCategories;
  @override
  List<CategoryData> get childCategories;
  @override
  bool get hasNoResults;
  @override
  List<CartModel> get carts;
  @override
  List<String> get selectedInterests;
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
  cart.CartModel get cartResponse;
  @override
  double get totalCartPrice;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
