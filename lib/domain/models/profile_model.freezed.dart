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

 String get login;@JsonKey(name: 'displayname') String get displayName; ProfileImageModel get image;@JsonKey(name: 'cursus_users') List<CursusUserModel> get cursusUsers; int get wallet;@JsonKey(name: 'correction_point') int get correctionPoint;@JsonKey(name: 'titles_users') List<ProfileTitlesUser> get titlesUsers; List<ProfileTitle> get titles;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.login, login) || other.login == login)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.cursusUsers, cursusUsers)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.correctionPoint, correctionPoint) || other.correctionPoint == correctionPoint)&&const DeepCollectionEquality().equals(other.titlesUsers, titlesUsers)&&const DeepCollectionEquality().equals(other.titles, titles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,displayName,image,const DeepCollectionEquality().hash(cursusUsers),wallet,correctionPoint,const DeepCollectionEquality().hash(titlesUsers),const DeepCollectionEquality().hash(titles));

@override
String toString() {
  return 'ProfileModel(login: $login, displayName: $displayName, image: $image, cursusUsers: $cursusUsers, wallet: $wallet, correctionPoint: $correctionPoint, titlesUsers: $titlesUsers, titles: $titles)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
 String login,@JsonKey(name: 'displayname') String displayName, ProfileImageModel image,@JsonKey(name: 'cursus_users') List<CursusUserModel> cursusUsers, int wallet,@JsonKey(name: 'correction_point') int correctionPoint,@JsonKey(name: 'titles_users') List<ProfileTitlesUser> titlesUsers, List<ProfileTitle> titles
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
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? displayName = null,Object? image = null,Object? cursusUsers = null,Object? wallet = null,Object? correctionPoint = null,Object? titlesUsers = null,Object? titles = null,}) {
  return _then(_self.copyWith(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ProfileImageModel,cursusUsers: null == cursusUsers ? _self.cursusUsers : cursusUsers // ignore: cast_nullable_to_non_nullable
as List<CursusUserModel>,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as int,correctionPoint: null == correctionPoint ? _self.correctionPoint : correctionPoint // ignore: cast_nullable_to_non_nullable
as int,titlesUsers: null == titlesUsers ? _self.titlesUsers : titlesUsers // ignore: cast_nullable_to_non_nullable
as List<ProfileTitlesUser>,titles: null == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as List<ProfileTitle>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login, @JsonKey(name: 'displayname')  String displayName,  ProfileImageModel image, @JsonKey(name: 'cursus_users')  List<CursusUserModel> cursusUsers,  int wallet, @JsonKey(name: 'correction_point')  int correctionPoint, @JsonKey(name: 'titles_users')  List<ProfileTitlesUser> titlesUsers,  List<ProfileTitle> titles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.login,_that.displayName,_that.image,_that.cursusUsers,_that.wallet,_that.correctionPoint,_that.titlesUsers,_that.titles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login, @JsonKey(name: 'displayname')  String displayName,  ProfileImageModel image, @JsonKey(name: 'cursus_users')  List<CursusUserModel> cursusUsers,  int wallet, @JsonKey(name: 'correction_point')  int correctionPoint, @JsonKey(name: 'titles_users')  List<ProfileTitlesUser> titlesUsers,  List<ProfileTitle> titles)  $default,) {final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that.login,_that.displayName,_that.image,_that.cursusUsers,_that.wallet,_that.correctionPoint,_that.titlesUsers,_that.titles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login, @JsonKey(name: 'displayname')  String displayName,  ProfileImageModel image, @JsonKey(name: 'cursus_users')  List<CursusUserModel> cursusUsers,  int wallet, @JsonKey(name: 'correction_point')  int correctionPoint, @JsonKey(name: 'titles_users')  List<ProfileTitlesUser> titlesUsers,  List<ProfileTitle> titles)?  $default,) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.login,_that.displayName,_that.image,_that.cursusUsers,_that.wallet,_that.correctionPoint,_that.titlesUsers,_that.titles);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ProfileModel implements ProfileModel {
  const _ProfileModel({required this.login, @JsonKey(name: 'displayname') required this.displayName, required this.image, @JsonKey(name: 'cursus_users') required final  List<CursusUserModel> cursusUsers, required this.wallet, @JsonKey(name: 'correction_point') required this.correctionPoint, @JsonKey(name: 'titles_users') required final  List<ProfileTitlesUser> titlesUsers, required final  List<ProfileTitle> titles}): _cursusUsers = cursusUsers,_titlesUsers = titlesUsers,_titles = titles;
  factory _ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

@override final  String login;
@override@JsonKey(name: 'displayname') final  String displayName;
@override final  ProfileImageModel image;
 final  List<CursusUserModel> _cursusUsers;
@override@JsonKey(name: 'cursus_users') List<CursusUserModel> get cursusUsers {
  if (_cursusUsers is EqualUnmodifiableListView) return _cursusUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cursusUsers);
}

@override final  int wallet;
@override@JsonKey(name: 'correction_point') final  int correctionPoint;
 final  List<ProfileTitlesUser> _titlesUsers;
@override@JsonKey(name: 'titles_users') List<ProfileTitlesUser> get titlesUsers {
  if (_titlesUsers is EqualUnmodifiableListView) return _titlesUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_titlesUsers);
}

 final  List<ProfileTitle> _titles;
@override List<ProfileTitle> get titles {
  if (_titles is EqualUnmodifiableListView) return _titles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_titles);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.login, login) || other.login == login)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._cursusUsers, _cursusUsers)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.correctionPoint, correctionPoint) || other.correctionPoint == correctionPoint)&&const DeepCollectionEquality().equals(other._titlesUsers, _titlesUsers)&&const DeepCollectionEquality().equals(other._titles, _titles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,displayName,image,const DeepCollectionEquality().hash(_cursusUsers),wallet,correctionPoint,const DeepCollectionEquality().hash(_titlesUsers),const DeepCollectionEquality().hash(_titles));

@override
String toString() {
  return 'ProfileModel(login: $login, displayName: $displayName, image: $image, cursusUsers: $cursusUsers, wallet: $wallet, correctionPoint: $correctionPoint, titlesUsers: $titlesUsers, titles: $titles)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String login,@JsonKey(name: 'displayname') String displayName, ProfileImageModel image,@JsonKey(name: 'cursus_users') List<CursusUserModel> cursusUsers, int wallet,@JsonKey(name: 'correction_point') int correctionPoint,@JsonKey(name: 'titles_users') List<ProfileTitlesUser> titlesUsers, List<ProfileTitle> titles
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
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? displayName = null,Object? image = null,Object? cursusUsers = null,Object? wallet = null,Object? correctionPoint = null,Object? titlesUsers = null,Object? titles = null,}) {
  return _then(_ProfileModel(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ProfileImageModel,cursusUsers: null == cursusUsers ? _self._cursusUsers : cursusUsers // ignore: cast_nullable_to_non_nullable
as List<CursusUserModel>,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as int,correctionPoint: null == correctionPoint ? _self.correctionPoint : correctionPoint // ignore: cast_nullable_to_non_nullable
as int,titlesUsers: null == titlesUsers ? _self._titlesUsers : titlesUsers // ignore: cast_nullable_to_non_nullable
as List<ProfileTitlesUser>,titles: null == titles ? _self._titles : titles // ignore: cast_nullable_to_non_nullable
as List<ProfileTitle>,
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
mixin _$ProfileTitle {

 int get id; String get name;
/// Create a copy of ProfileTitle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileTitleCopyWith<ProfileTitle> get copyWith => _$ProfileTitleCopyWithImpl<ProfileTitle>(this as ProfileTitle, _$identity);

  /// Serializes this ProfileTitle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileTitle&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ProfileTitle(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProfileTitleCopyWith<$Res>  {
  factory $ProfileTitleCopyWith(ProfileTitle value, $Res Function(ProfileTitle) _then) = _$ProfileTitleCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$ProfileTitleCopyWithImpl<$Res>
    implements $ProfileTitleCopyWith<$Res> {
  _$ProfileTitleCopyWithImpl(this._self, this._then);

  final ProfileTitle _self;
  final $Res Function(ProfileTitle) _then;

/// Create a copy of ProfileTitle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileTitle].
extension ProfileTitlePatterns on ProfileTitle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileTitle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileTitle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileTitle value)  $default,){
final _that = this;
switch (_that) {
case _ProfileTitle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileTitle value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileTitle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileTitle() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _ProfileTitle():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ProfileTitle() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ProfileTitle implements ProfileTitle {
  const _ProfileTitle({required this.id, required this.name});
  factory _ProfileTitle.fromJson(Map<String, dynamic> json) => _$ProfileTitleFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of ProfileTitle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileTitleCopyWith<_ProfileTitle> get copyWith => __$ProfileTitleCopyWithImpl<_ProfileTitle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileTitleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileTitle&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ProfileTitle(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ProfileTitleCopyWith<$Res> implements $ProfileTitleCopyWith<$Res> {
  factory _$ProfileTitleCopyWith(_ProfileTitle value, $Res Function(_ProfileTitle) _then) = __$ProfileTitleCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$ProfileTitleCopyWithImpl<$Res>
    implements _$ProfileTitleCopyWith<$Res> {
  __$ProfileTitleCopyWithImpl(this._self, this._then);

  final _ProfileTitle _self;
  final $Res Function(_ProfileTitle) _then;

/// Create a copy of ProfileTitle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_ProfileTitle(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProfileTitlesUser {

 bool get selected; int get title_id;
/// Create a copy of ProfileTitlesUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileTitlesUserCopyWith<ProfileTitlesUser> get copyWith => _$ProfileTitlesUserCopyWithImpl<ProfileTitlesUser>(this as ProfileTitlesUser, _$identity);

  /// Serializes this ProfileTitlesUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileTitlesUser&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.title_id, title_id) || other.title_id == title_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selected,title_id);

@override
String toString() {
  return 'ProfileTitlesUser(selected: $selected, title_id: $title_id)';
}


}

/// @nodoc
abstract mixin class $ProfileTitlesUserCopyWith<$Res>  {
  factory $ProfileTitlesUserCopyWith(ProfileTitlesUser value, $Res Function(ProfileTitlesUser) _then) = _$ProfileTitlesUserCopyWithImpl;
@useResult
$Res call({
 bool selected, int title_id
});




}
/// @nodoc
class _$ProfileTitlesUserCopyWithImpl<$Res>
    implements $ProfileTitlesUserCopyWith<$Res> {
  _$ProfileTitlesUserCopyWithImpl(this._self, this._then);

  final ProfileTitlesUser _self;
  final $Res Function(ProfileTitlesUser) _then;

/// Create a copy of ProfileTitlesUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selected = null,Object? title_id = null,}) {
  return _then(_self.copyWith(
selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,title_id: null == title_id ? _self.title_id : title_id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileTitlesUser].
extension ProfileTitlesUserPatterns on ProfileTitlesUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileTitlesUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileTitlesUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileTitlesUser value)  $default,){
final _that = this;
switch (_that) {
case _ProfileTitlesUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileTitlesUser value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileTitlesUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool selected,  int title_id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileTitlesUser() when $default != null:
return $default(_that.selected,_that.title_id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool selected,  int title_id)  $default,) {final _that = this;
switch (_that) {
case _ProfileTitlesUser():
return $default(_that.selected,_that.title_id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool selected,  int title_id)?  $default,) {final _that = this;
switch (_that) {
case _ProfileTitlesUser() when $default != null:
return $default(_that.selected,_that.title_id);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ProfileTitlesUser implements ProfileTitlesUser {
  const _ProfileTitlesUser({required this.selected, required this.title_id});
  factory _ProfileTitlesUser.fromJson(Map<String, dynamic> json) => _$ProfileTitlesUserFromJson(json);

@override final  bool selected;
@override final  int title_id;

/// Create a copy of ProfileTitlesUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileTitlesUserCopyWith<_ProfileTitlesUser> get copyWith => __$ProfileTitlesUserCopyWithImpl<_ProfileTitlesUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileTitlesUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileTitlesUser&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.title_id, title_id) || other.title_id == title_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selected,title_id);

@override
String toString() {
  return 'ProfileTitlesUser(selected: $selected, title_id: $title_id)';
}


}

/// @nodoc
abstract mixin class _$ProfileTitlesUserCopyWith<$Res> implements $ProfileTitlesUserCopyWith<$Res> {
  factory _$ProfileTitlesUserCopyWith(_ProfileTitlesUser value, $Res Function(_ProfileTitlesUser) _then) = __$ProfileTitlesUserCopyWithImpl;
@override @useResult
$Res call({
 bool selected, int title_id
});




}
/// @nodoc
class __$ProfileTitlesUserCopyWithImpl<$Res>
    implements _$ProfileTitlesUserCopyWith<$Res> {
  __$ProfileTitlesUserCopyWithImpl(this._self, this._then);

  final _ProfileTitlesUser _self;
  final $Res Function(_ProfileTitlesUser) _then;

/// Create a copy of ProfileTitlesUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selected = null,Object? title_id = null,}) {
  return _then(_ProfileTitlesUser(
selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,title_id: null == title_id ? _self.title_id : title_id // ignore: cast_nullable_to_non_nullable
as int,
  ));
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
