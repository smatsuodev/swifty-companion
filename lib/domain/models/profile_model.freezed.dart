// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileModel {

 String get login; ProfileImageModel get image;@JsonKey(name: 'cursus_users') List<CursusUserModel> get cursusUsers; int get wallet;@JsonKey(name: 'correction_point') int get correctionPoint;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.login, login) || other.login == login)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.cursusUsers, cursusUsers)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.correctionPoint, correctionPoint) || other.correctionPoint == correctionPoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,image,const DeepCollectionEquality().hash(cursusUsers),wallet,correctionPoint);

@override
String toString() {
  return 'ProfileModel(login: $login, image: $image, cursusUsers: $cursusUsers, wallet: $wallet, correctionPoint: $correctionPoint)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
 String login, ProfileImageModel image,@JsonKey(name: 'cursus_users') List<CursusUserModel> cursusUsers, int wallet,@JsonKey(name: 'correction_point') int correctionPoint
});


$ProfileImageModelCopyWith<$Res> get image;

}
/// @nodoc
class _$ProfileModelCopyWithImpl<$Res>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._self, this._then);

  final ProfileModel _self;
  final $Res Function(ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? image = null,Object? cursusUsers = null,Object? wallet = null,Object? correctionPoint = null,}) {
  return _then(_self.copyWith(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ProfileImageModel,cursusUsers: null == cursusUsers ? _self.cursusUsers : cursusUsers // ignore: cast_nullable_to_non_nullable
as List<CursusUserModel>,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as int,correctionPoint: null == correctionPoint ? _self.correctionPoint : correctionPoint // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileImageModelCopyWith<$Res> get image {
  
  return $ProfileImageModelCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileModel].
extension ProfileModelPatterns on ProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login,  ProfileImageModel image, @JsonKey(name: 'cursus_users')  List<CursusUserModel> cursusUsers,  int wallet, @JsonKey(name: 'correction_point')  int correctionPoint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.login,_that.image,_that.cursusUsers,_that.wallet,_that.correctionPoint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login,  ProfileImageModel image, @JsonKey(name: 'cursus_users')  List<CursusUserModel> cursusUsers,  int wallet, @JsonKey(name: 'correction_point')  int correctionPoint)  $default,) {final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that.login,_that.image,_that.cursusUsers,_that.wallet,_that.correctionPoint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login,  ProfileImageModel image, @JsonKey(name: 'cursus_users')  List<CursusUserModel> cursusUsers,  int wallet, @JsonKey(name: 'correction_point')  int correctionPoint)?  $default,) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.login,_that.image,_that.cursusUsers,_that.wallet,_that.correctionPoint);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ProfileModel implements ProfileModel {
  const _ProfileModel({required this.login, required this.image, @JsonKey(name: 'cursus_users') required final  List<CursusUserModel> cursusUsers, required this.wallet, @JsonKey(name: 'correction_point') required this.correctionPoint}): _cursusUsers = cursusUsers;
  factory _ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

@override final  String login;
@override final  ProfileImageModel image;
 final  List<CursusUserModel> _cursusUsers;
@override@JsonKey(name: 'cursus_users') List<CursusUserModel> get cursusUsers {
  if (_cursusUsers is EqualUnmodifiableListView) return _cursusUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cursusUsers);
}

@override final  int wallet;
@override@JsonKey(name: 'correction_point') final  int correctionPoint;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileModelCopyWith<_ProfileModel> get copyWith => __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.login, login) || other.login == login)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._cursusUsers, _cursusUsers)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.correctionPoint, correctionPoint) || other.correctionPoint == correctionPoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,image,const DeepCollectionEquality().hash(_cursusUsers),wallet,correctionPoint);

@override
String toString() {
  return 'ProfileModel(login: $login, image: $image, cursusUsers: $cursusUsers, wallet: $wallet, correctionPoint: $correctionPoint)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String login, ProfileImageModel image,@JsonKey(name: 'cursus_users') List<CursusUserModel> cursusUsers, int wallet,@JsonKey(name: 'correction_point') int correctionPoint
});


@override $ProfileImageModelCopyWith<$Res> get image;

}
/// @nodoc
class __$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(this._self, this._then);

  final _ProfileModel _self;
  final $Res Function(_ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? image = null,Object? cursusUsers = null,Object? wallet = null,Object? correctionPoint = null,}) {
  return _then(_ProfileModel(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ProfileImageModel,cursusUsers: null == cursusUsers ? _self._cursusUsers : cursusUsers // ignore: cast_nullable_to_non_nullable
as List<CursusUserModel>,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as int,correctionPoint: null == correctionPoint ? _self.correctionPoint : correctionPoint // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileImageModelCopyWith<$Res> get image {
  
  return $ProfileImageModelCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// @nodoc
mixin _$ProfileImageModel {

 String get link;
/// Create a copy of ProfileImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileImageModelCopyWith<ProfileImageModel> get copyWith => _$ProfileImageModelCopyWithImpl<ProfileImageModel>(this as ProfileImageModel, _$identity);

  /// Serializes this ProfileImageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileImageModel&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,link);

@override
String toString() {
  return 'ProfileImageModel(link: $link)';
}


}

/// @nodoc
abstract mixin class $ProfileImageModelCopyWith<$Res>  {
  factory $ProfileImageModelCopyWith(ProfileImageModel value, $Res Function(ProfileImageModel) _then) = _$ProfileImageModelCopyWithImpl;
@useResult
$Res call({
 String link
});




}
/// @nodoc
class _$ProfileImageModelCopyWithImpl<$Res>
    implements $ProfileImageModelCopyWith<$Res> {
  _$ProfileImageModelCopyWithImpl(this._self, this._then);

  final ProfileImageModel _self;
  final $Res Function(ProfileImageModel) _then;

/// Create a copy of ProfileImageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? link = null,}) {
  return _then(_self.copyWith(
link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileImageModel].
extension ProfileImageModelPatterns on ProfileImageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileImageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileImageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileImageModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileImageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileImageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileImageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileImageModel() when $default != null:
return $default(_that.link);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String link)  $default,) {final _that = this;
switch (_that) {
case _ProfileImageModel():
return $default(_that.link);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String link)?  $default,) {final _that = this;
switch (_that) {
case _ProfileImageModel() when $default != null:
return $default(_that.link);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ProfileImageModel implements ProfileImageModel {
  const _ProfileImageModel({required this.link});
  factory _ProfileImageModel.fromJson(Map<String, dynamic> json) => _$ProfileImageModelFromJson(json);

@override final  String link;

/// Create a copy of ProfileImageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileImageModelCopyWith<_ProfileImageModel> get copyWith => __$ProfileImageModelCopyWithImpl<_ProfileImageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileImageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileImageModel&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,link);

@override
String toString() {
  return 'ProfileImageModel(link: $link)';
}


}

/// @nodoc
abstract mixin class _$ProfileImageModelCopyWith<$Res> implements $ProfileImageModelCopyWith<$Res> {
  factory _$ProfileImageModelCopyWith(_ProfileImageModel value, $Res Function(_ProfileImageModel) _then) = __$ProfileImageModelCopyWithImpl;
@override @useResult
$Res call({
 String link
});




}
/// @nodoc
class __$ProfileImageModelCopyWithImpl<$Res>
    implements _$ProfileImageModelCopyWith<$Res> {
  __$ProfileImageModelCopyWithImpl(this._self, this._then);

  final _ProfileImageModel _self;
  final $Res Function(_ProfileImageModel) _then;

/// Create a copy of ProfileImageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? link = null,}) {
  return _then(_ProfileImageModel(
link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
