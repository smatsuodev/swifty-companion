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

 int get id; String get login;@JsonKey(name: 'displayname') String get displayName; ProfileImageModel get image;@JsonKey(name: 'cursus_users') List<CursusUserModel> get cursusUsers; int get wallet;@JsonKey(name: 'correction_point') int get correctionPoint;@JsonKey(name: 'titles_users') List<ProfileTitlesUserModel> get titlesUsers; List<ProfileTitleModel> get titles;@JsonKey(name: 'projects_users') List<ProjectUserModel> get projectsUsers;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.cursusUsers, cursusUsers)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.correctionPoint, correctionPoint) || other.correctionPoint == correctionPoint)&&const DeepCollectionEquality().equals(other.titlesUsers, titlesUsers)&&const DeepCollectionEquality().equals(other.titles, titles)&&const DeepCollectionEquality().equals(other.projectsUsers, projectsUsers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,login,displayName,image,const DeepCollectionEquality().hash(cursusUsers),wallet,correctionPoint,const DeepCollectionEquality().hash(titlesUsers),const DeepCollectionEquality().hash(titles),const DeepCollectionEquality().hash(projectsUsers));

@override
String toString() {
  return 'ProfileModel(id: $id, login: $login, displayName: $displayName, image: $image, cursusUsers: $cursusUsers, wallet: $wallet, correctionPoint: $correctionPoint, titlesUsers: $titlesUsers, titles: $titles, projectsUsers: $projectsUsers)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
 int id, String login,@JsonKey(name: 'displayname') String displayName, ProfileImageModel image,@JsonKey(name: 'cursus_users') List<CursusUserModel> cursusUsers, int wallet,@JsonKey(name: 'correction_point') int correctionPoint,@JsonKey(name: 'titles_users') List<ProfileTitlesUserModel> titlesUsers, List<ProfileTitleModel> titles,@JsonKey(name: 'projects_users') List<ProjectUserModel> projectsUsers
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? login = null,Object? displayName = null,Object? image = null,Object? cursusUsers = null,Object? wallet = null,Object? correctionPoint = null,Object? titlesUsers = null,Object? titles = null,Object? projectsUsers = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ProfileImageModel,cursusUsers: null == cursusUsers ? _self.cursusUsers : cursusUsers // ignore: cast_nullable_to_non_nullable
as List<CursusUserModel>,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as int,correctionPoint: null == correctionPoint ? _self.correctionPoint : correctionPoint // ignore: cast_nullable_to_non_nullable
as int,titlesUsers: null == titlesUsers ? _self.titlesUsers : titlesUsers // ignore: cast_nullable_to_non_nullable
as List<ProfileTitlesUserModel>,titles: null == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as List<ProfileTitleModel>,projectsUsers: null == projectsUsers ? _self.projectsUsers : projectsUsers // ignore: cast_nullable_to_non_nullable
as List<ProjectUserModel>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String login, @JsonKey(name: 'displayname')  String displayName,  ProfileImageModel image, @JsonKey(name: 'cursus_users')  List<CursusUserModel> cursusUsers,  int wallet, @JsonKey(name: 'correction_point')  int correctionPoint, @JsonKey(name: 'titles_users')  List<ProfileTitlesUserModel> titlesUsers,  List<ProfileTitleModel> titles, @JsonKey(name: 'projects_users')  List<ProjectUserModel> projectsUsers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.id,_that.login,_that.displayName,_that.image,_that.cursusUsers,_that.wallet,_that.correctionPoint,_that.titlesUsers,_that.titles,_that.projectsUsers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String login, @JsonKey(name: 'displayname')  String displayName,  ProfileImageModel image, @JsonKey(name: 'cursus_users')  List<CursusUserModel> cursusUsers,  int wallet, @JsonKey(name: 'correction_point')  int correctionPoint, @JsonKey(name: 'titles_users')  List<ProfileTitlesUserModel> titlesUsers,  List<ProfileTitleModel> titles, @JsonKey(name: 'projects_users')  List<ProjectUserModel> projectsUsers)  $default,) {final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that.id,_that.login,_that.displayName,_that.image,_that.cursusUsers,_that.wallet,_that.correctionPoint,_that.titlesUsers,_that.titles,_that.projectsUsers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String login, @JsonKey(name: 'displayname')  String displayName,  ProfileImageModel image, @JsonKey(name: 'cursus_users')  List<CursusUserModel> cursusUsers,  int wallet, @JsonKey(name: 'correction_point')  int correctionPoint, @JsonKey(name: 'titles_users')  List<ProfileTitlesUserModel> titlesUsers,  List<ProfileTitleModel> titles, @JsonKey(name: 'projects_users')  List<ProjectUserModel> projectsUsers)?  $default,) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.id,_that.login,_that.displayName,_that.image,_that.cursusUsers,_that.wallet,_that.correctionPoint,_that.titlesUsers,_that.titles,_that.projectsUsers);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ProfileModel implements ProfileModel {
  const _ProfileModel({required this.id, required this.login, @JsonKey(name: 'displayname') required this.displayName, required this.image, @JsonKey(name: 'cursus_users') required final  List<CursusUserModel> cursusUsers, required this.wallet, @JsonKey(name: 'correction_point') required this.correctionPoint, @JsonKey(name: 'titles_users') required final  List<ProfileTitlesUserModel> titlesUsers, required final  List<ProfileTitleModel> titles, @JsonKey(name: 'projects_users') required final  List<ProjectUserModel> projectsUsers}): _cursusUsers = cursusUsers,_titlesUsers = titlesUsers,_titles = titles,_projectsUsers = projectsUsers;
  factory _ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

@override final  int id;
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
 final  List<ProfileTitlesUserModel> _titlesUsers;
@override@JsonKey(name: 'titles_users') List<ProfileTitlesUserModel> get titlesUsers {
  if (_titlesUsers is EqualUnmodifiableListView) return _titlesUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_titlesUsers);
}

 final  List<ProfileTitleModel> _titles;
@override List<ProfileTitleModel> get titles {
  if (_titles is EqualUnmodifiableListView) return _titles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_titles);
}

 final  List<ProjectUserModel> _projectsUsers;
@override@JsonKey(name: 'projects_users') List<ProjectUserModel> get projectsUsers {
  if (_projectsUsers is EqualUnmodifiableListView) return _projectsUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projectsUsers);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._cursusUsers, _cursusUsers)&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.correctionPoint, correctionPoint) || other.correctionPoint == correctionPoint)&&const DeepCollectionEquality().equals(other._titlesUsers, _titlesUsers)&&const DeepCollectionEquality().equals(other._titles, _titles)&&const DeepCollectionEquality().equals(other._projectsUsers, _projectsUsers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,login,displayName,image,const DeepCollectionEquality().hash(_cursusUsers),wallet,correctionPoint,const DeepCollectionEquality().hash(_titlesUsers),const DeepCollectionEquality().hash(_titles),const DeepCollectionEquality().hash(_projectsUsers));

@override
String toString() {
  return 'ProfileModel(id: $id, login: $login, displayName: $displayName, image: $image, cursusUsers: $cursusUsers, wallet: $wallet, correctionPoint: $correctionPoint, titlesUsers: $titlesUsers, titles: $titles, projectsUsers: $projectsUsers)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String login,@JsonKey(name: 'displayname') String displayName, ProfileImageModel image,@JsonKey(name: 'cursus_users') List<CursusUserModel> cursusUsers, int wallet,@JsonKey(name: 'correction_point') int correctionPoint,@JsonKey(name: 'titles_users') List<ProfileTitlesUserModel> titlesUsers, List<ProfileTitleModel> titles,@JsonKey(name: 'projects_users') List<ProjectUserModel> projectsUsers
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? login = null,Object? displayName = null,Object? image = null,Object? cursusUsers = null,Object? wallet = null,Object? correctionPoint = null,Object? titlesUsers = null,Object? titles = null,Object? projectsUsers = null,}) {
  return _then(_ProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ProfileImageModel,cursusUsers: null == cursusUsers ? _self._cursusUsers : cursusUsers // ignore: cast_nullable_to_non_nullable
as List<CursusUserModel>,wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as int,correctionPoint: null == correctionPoint ? _self.correctionPoint : correctionPoint // ignore: cast_nullable_to_non_nullable
as int,titlesUsers: null == titlesUsers ? _self._titlesUsers : titlesUsers // ignore: cast_nullable_to_non_nullable
as List<ProfileTitlesUserModel>,titles: null == titles ? _self._titles : titles // ignore: cast_nullable_to_non_nullable
as List<ProfileTitleModel>,projectsUsers: null == projectsUsers ? _self._projectsUsers : projectsUsers // ignore: cast_nullable_to_non_nullable
as List<ProjectUserModel>,
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

ProfileTitleModel _$ProfileTitleModelFromJson(
  Map<String, dynamic> json
) {
    return _ProfileTitle.fromJson(
      json
    );
}

/// @nodoc
mixin _$ProfileTitleModel {

 int get id; String get name;
/// Create a copy of ProfileTitleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileTitleModelCopyWith<ProfileTitleModel> get copyWith => _$ProfileTitleModelCopyWithImpl<ProfileTitleModel>(this as ProfileTitleModel, _$identity);

  /// Serializes this ProfileTitleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileTitleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ProfileTitleModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProfileTitleModelCopyWith<$Res>  {
  factory $ProfileTitleModelCopyWith(ProfileTitleModel value, $Res Function(ProfileTitleModel) _then) = _$ProfileTitleModelCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$ProfileTitleModelCopyWithImpl<$Res>
    implements $ProfileTitleModelCopyWith<$Res> {
  _$ProfileTitleModelCopyWithImpl(this._self, this._then);

  final ProfileTitleModel _self;
  final $Res Function(ProfileTitleModel) _then;

/// Create a copy of ProfileTitleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileTitleModel].
extension ProfileTitleModelPatterns on ProfileTitleModel {
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
class _ProfileTitle implements ProfileTitleModel {
  const _ProfileTitle({required this.id, required this.name});
  factory _ProfileTitle.fromJson(Map<String, dynamic> json) => _$ProfileTitleFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of ProfileTitleModel
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
  return 'ProfileTitleModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ProfileTitleCopyWith<$Res> implements $ProfileTitleModelCopyWith<$Res> {
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

/// Create a copy of ProfileTitleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_ProfileTitle(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

ProfileTitlesUserModel _$ProfileTitlesUserModelFromJson(
  Map<String, dynamic> json
) {
    return _ProfileTitlesUser.fromJson(
      json
    );
}

/// @nodoc
mixin _$ProfileTitlesUserModel {

 bool get selected;@JsonKey(name: 'title_id') int get titleId;
/// Create a copy of ProfileTitlesUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileTitlesUserModelCopyWith<ProfileTitlesUserModel> get copyWith => _$ProfileTitlesUserModelCopyWithImpl<ProfileTitlesUserModel>(this as ProfileTitlesUserModel, _$identity);

  /// Serializes this ProfileTitlesUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileTitlesUserModel&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.titleId, titleId) || other.titleId == titleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selected,titleId);

@override
String toString() {
  return 'ProfileTitlesUserModel(selected: $selected, titleId: $titleId)';
}


}

/// @nodoc
abstract mixin class $ProfileTitlesUserModelCopyWith<$Res>  {
  factory $ProfileTitlesUserModelCopyWith(ProfileTitlesUserModel value, $Res Function(ProfileTitlesUserModel) _then) = _$ProfileTitlesUserModelCopyWithImpl;
@useResult
$Res call({
 bool selected,@JsonKey(name: 'title_id') int titleId
});




}
/// @nodoc
class _$ProfileTitlesUserModelCopyWithImpl<$Res>
    implements $ProfileTitlesUserModelCopyWith<$Res> {
  _$ProfileTitlesUserModelCopyWithImpl(this._self, this._then);

  final ProfileTitlesUserModel _self;
  final $Res Function(ProfileTitlesUserModel) _then;

/// Create a copy of ProfileTitlesUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selected = null,Object? titleId = null,}) {
  return _then(_self.copyWith(
selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,titleId: null == titleId ? _self.titleId : titleId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileTitlesUserModel].
extension ProfileTitlesUserModelPatterns on ProfileTitlesUserModel {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool selected, @JsonKey(name: 'title_id')  int titleId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileTitlesUser() when $default != null:
return $default(_that.selected,_that.titleId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool selected, @JsonKey(name: 'title_id')  int titleId)  $default,) {final _that = this;
switch (_that) {
case _ProfileTitlesUser():
return $default(_that.selected,_that.titleId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool selected, @JsonKey(name: 'title_id')  int titleId)?  $default,) {final _that = this;
switch (_that) {
case _ProfileTitlesUser() when $default != null:
return $default(_that.selected,_that.titleId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ProfileTitlesUser implements ProfileTitlesUserModel {
  const _ProfileTitlesUser({required this.selected, @JsonKey(name: 'title_id') required this.titleId});
  factory _ProfileTitlesUser.fromJson(Map<String, dynamic> json) => _$ProfileTitlesUserFromJson(json);

@override final  bool selected;
@override@JsonKey(name: 'title_id') final  int titleId;

/// Create a copy of ProfileTitlesUserModel
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileTitlesUser&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.titleId, titleId) || other.titleId == titleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selected,titleId);

@override
String toString() {
  return 'ProfileTitlesUserModel(selected: $selected, titleId: $titleId)';
}


}

/// @nodoc
abstract mixin class _$ProfileTitlesUserCopyWith<$Res> implements $ProfileTitlesUserModelCopyWith<$Res> {
  factory _$ProfileTitlesUserCopyWith(_ProfileTitlesUser value, $Res Function(_ProfileTitlesUser) _then) = __$ProfileTitlesUserCopyWithImpl;
@override @useResult
$Res call({
 bool selected,@JsonKey(name: 'title_id') int titleId
});




}
/// @nodoc
class __$ProfileTitlesUserCopyWithImpl<$Res>
    implements _$ProfileTitlesUserCopyWith<$Res> {
  __$ProfileTitlesUserCopyWithImpl(this._self, this._then);

  final _ProfileTitlesUser _self;
  final $Res Function(_ProfileTitlesUser) _then;

/// Create a copy of ProfileTitlesUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selected = null,Object? titleId = null,}) {
  return _then(_ProfileTitlesUser(
selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,titleId: null == titleId ? _self.titleId : titleId // ignore: cast_nullable_to_non_nullable
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
