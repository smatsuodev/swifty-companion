// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coalition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoalitionModel {

 int get id; String get name; String get slug;@ColorFromHexConverter() Color get color;@JsonKey(name: 'user_id') int get userId;@JsonKey(name: 'image_url') String get imageUrl;
/// Create a copy of CoalitionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoalitionModelCopyWith<CoalitionModel> get copyWith => _$CoalitionModelCopyWithImpl<CoalitionModel>(this as CoalitionModel, _$identity);

  /// Serializes this CoalitionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoalitionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.color, color) || other.color == color)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,color,userId,imageUrl);

@override
String toString() {
  return 'CoalitionModel(id: $id, name: $name, slug: $slug, color: $color, userId: $userId, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $CoalitionModelCopyWith<$Res>  {
  factory $CoalitionModelCopyWith(CoalitionModel value, $Res Function(CoalitionModel) _then) = _$CoalitionModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug,@ColorFromHexConverter() Color color,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'image_url') String imageUrl
});




}
/// @nodoc
class _$CoalitionModelCopyWithImpl<$Res>
    implements $CoalitionModelCopyWith<$Res> {
  _$CoalitionModelCopyWithImpl(this._self, this._then);

  final CoalitionModel _self;
  final $Res Function(CoalitionModel) _then;

/// Create a copy of CoalitionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? color = null,Object? userId = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CoalitionModel].
extension CoalitionModelPatterns on CoalitionModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoalitionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoalitionModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoalitionModel value)  $default,){
final _that = this;
switch (_that) {
case _CoalitionModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoalitionModel value)?  $default,){
final _that = this;
switch (_that) {
case _CoalitionModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug, @ColorFromHexConverter()  Color color, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'image_url')  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoalitionModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.color,_that.userId,_that.imageUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug, @ColorFromHexConverter()  Color color, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'image_url')  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _CoalitionModel():
return $default(_that.id,_that.name,_that.slug,_that.color,_that.userId,_that.imageUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug, @ColorFromHexConverter()  Color color, @JsonKey(name: 'user_id')  int userId, @JsonKey(name: 'image_url')  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _CoalitionModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.color,_that.userId,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CoalitionModel implements CoalitionModel {
  const _CoalitionModel({required this.id, required this.name, required this.slug, @ColorFromHexConverter() required this.color, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'image_url') required this.imageUrl});
  factory _CoalitionModel.fromJson(Map<String, dynamic> json) => _$CoalitionModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String slug;
@override@ColorFromHexConverter() final  Color color;
@override@JsonKey(name: 'user_id') final  int userId;
@override@JsonKey(name: 'image_url') final  String imageUrl;

/// Create a copy of CoalitionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoalitionModelCopyWith<_CoalitionModel> get copyWith => __$CoalitionModelCopyWithImpl<_CoalitionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoalitionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoalitionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.color, color) || other.color == color)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,color,userId,imageUrl);

@override
String toString() {
  return 'CoalitionModel(id: $id, name: $name, slug: $slug, color: $color, userId: $userId, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$CoalitionModelCopyWith<$Res> implements $CoalitionModelCopyWith<$Res> {
  factory _$CoalitionModelCopyWith(_CoalitionModel value, $Res Function(_CoalitionModel) _then) = __$CoalitionModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug,@ColorFromHexConverter() Color color,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'image_url') String imageUrl
});




}
/// @nodoc
class __$CoalitionModelCopyWithImpl<$Res>
    implements _$CoalitionModelCopyWith<$Res> {
  __$CoalitionModelCopyWithImpl(this._self, this._then);

  final _CoalitionModel _self;
  final $Res Function(_CoalitionModel) _then;

/// Create a copy of CoalitionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? color = null,Object? userId = null,Object? imageUrl = null,}) {
  return _then(_CoalitionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
