// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuctionProduct {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  Map<String, dynamic> get bidders => throw _privateConstructorUsedError;
  bool get isSold => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;

  /// Create a copy of AuctionProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionProductCopyWith<AuctionProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionProductCopyWith<$Res> {
  factory $AuctionProductCopyWith(
          AuctionProduct value, $Res Function(AuctionProduct) then) =
      _$AuctionProductCopyWithImpl<$Res, AuctionProduct>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String price,
      List<String> images,
      Map<String, dynamic> bidders,
      bool isSold,
      String ownerId});
}

/// @nodoc
class _$AuctionProductCopyWithImpl<$Res, $Val extends AuctionProduct>
    implements $AuctionProductCopyWith<$Res> {
  _$AuctionProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? images = null,
    Object? bidders = null,
    Object? isSold = null,
    Object? ownerId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bidders: null == bidders
          ? _value.bidders
          : bidders // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isSold: null == isSold
          ? _value.isSold
          : isSold // ignore: cast_nullable_to_non_nullable
              as bool,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionProductImplCopyWith<$Res>
    implements $AuctionProductCopyWith<$Res> {
  factory _$$AuctionProductImplCopyWith(_$AuctionProductImpl value,
          $Res Function(_$AuctionProductImpl) then) =
      __$$AuctionProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String price,
      List<String> images,
      Map<String, dynamic> bidders,
      bool isSold,
      String ownerId});
}

/// @nodoc
class __$$AuctionProductImplCopyWithImpl<$Res>
    extends _$AuctionProductCopyWithImpl<$Res, _$AuctionProductImpl>
    implements _$$AuctionProductImplCopyWith<$Res> {
  __$$AuctionProductImplCopyWithImpl(
      _$AuctionProductImpl _value, $Res Function(_$AuctionProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuctionProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? images = null,
    Object? bidders = null,
    Object? isSold = null,
    Object? ownerId = null,
  }) {
    return _then(_$AuctionProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bidders: null == bidders
          ? _value._bidders
          : bidders // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isSold: null == isSold
          ? _value.isSold
          : isSold // ignore: cast_nullable_to_non_nullable
              as bool,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuctionProductImpl implements _AuctionProduct {
  const _$AuctionProductImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required final List<String> images,
      required final Map<String, dynamic> bidders,
      required this.isSold,
      required this.ownerId})
      : _images = images,
        _bidders = bidders;

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String price;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final Map<String, dynamic> _bidders;
  @override
  Map<String, dynamic> get bidders {
    if (_bidders is EqualUnmodifiableMapView) return _bidders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_bidders);
  }

  @override
  final bool isSold;
  @override
  final String ownerId;

  @override
  String toString() {
    return 'AuctionProduct(id: $id, title: $title, description: $description, price: $price, images: $images, bidders: $bidders, isSold: $isSold, ownerId: $ownerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._bidders, _bidders) &&
            (identical(other.isSold, isSold) || other.isSold == isSold) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      price,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_bidders),
      isSold,
      ownerId);

  /// Create a copy of AuctionProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionProductImplCopyWith<_$AuctionProductImpl> get copyWith =>
      __$$AuctionProductImplCopyWithImpl<_$AuctionProductImpl>(
          this, _$identity);
}

abstract class _AuctionProduct implements AuctionProduct {
  const factory _AuctionProduct(
      {required final String id,
      required final String title,
      required final String description,
      required final String price,
      required final List<String> images,
      required final Map<String, dynamic> bidders,
      required final bool isSold,
      required final String ownerId}) = _$AuctionProductImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get price;
  @override
  List<String> get images;
  @override
  Map<String, dynamic> get bidders;
  @override
  bool get isSold;
  @override
  String get ownerId;

  /// Create a copy of AuctionProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionProductImplCopyWith<_$AuctionProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
