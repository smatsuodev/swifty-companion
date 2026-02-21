// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cursus_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CursusUserModel {

 int get id; double get level; CursusModel get cursus; List<CursusUserSkillModel> get skills;
/// Create a copy of CursusUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CursusUserModelCopyWith<CursusUserModel> get copyWith => _$CursusUserModelCopyWithImpl<CursusUserModel>(this as CursusUserModel, _$identity);

  /// Serializes this CursusUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CursusUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level)&&(identical(other.cursus, cursus) || other.cursus == cursus)&&const DeepCollectionEquality().equals(other.skills, skills));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level,cursus,const DeepCollectionEquality().hash(skills));

@override
String toString() {
  return 'CursusUserModel(id: $id, level: $level, cursus: $cursus, skills: $skills)';
}


}

/// @nodoc
abstract mixin class $CursusUserModelCopyWith<$Res>  {
  factory $CursusUserModelCopyWith(CursusUserModel value, $Res Function(CursusUserModel) _then) = _$CursusUserModelCopyWithImpl;
@useResult
$Res call({
 int id, double level, CursusModel cursus, List<CursusUserSkillModel> skills
});


$CursusModelCopyWith<$Res> get cursus;

}
/// @nodoc
class _$CursusUserModelCopyWithImpl<$Res>
    implements $CursusUserModelCopyWith<$Res> {
  _$CursusUserModelCopyWithImpl(this._self, this._then);

  final CursusUserModel _self;
  final $Res Function(CursusUserModel) _then;

/// Create a copy of CursusUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? level = null,Object? cursus = null,Object? skills = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as double,cursus: null == cursus ? _self.cursus : cursus // ignore: cast_nullable_to_non_nullable
as CursusModel,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<CursusUserSkillModel>,
  ));
}
/// Create a copy of CursusUserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursusModelCopyWith<$Res> get cursus {
  
  return $CursusModelCopyWith<$Res>(_self.cursus, (value) {
    return _then(_self.copyWith(cursus: value));
  });
}
}


/// Adds pattern-matching-related methods to [CursusUserModel].
extension CursusUserModelPatterns on CursusUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CursusUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CursusUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CursusUserModel value)  $default,){
final _that = this;
switch (_that) {
case _CursusUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CursusUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _CursusUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  double level,  CursusModel cursus,  List<CursusUserSkillModel> skills)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CursusUserModel() when $default != null:
return $default(_that.id,_that.level,_that.cursus,_that.skills);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  double level,  CursusModel cursus,  List<CursusUserSkillModel> skills)  $default,) {final _that = this;
switch (_that) {
case _CursusUserModel():
return $default(_that.id,_that.level,_that.cursus,_that.skills);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  double level,  CursusModel cursus,  List<CursusUserSkillModel> skills)?  $default,) {final _that = this;
switch (_that) {
case _CursusUserModel() when $default != null:
return $default(_that.id,_that.level,_that.cursus,_that.skills);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CursusUserModel implements CursusUserModel {
  const _CursusUserModel({required this.id, required this.level, required this.cursus, required final  List<CursusUserSkillModel> skills}): _skills = skills;
  factory _CursusUserModel.fromJson(Map<String, dynamic> json) => _$CursusUserModelFromJson(json);

@override final  int id;
@override final  double level;
@override final  CursusModel cursus;
 final  List<CursusUserSkillModel> _skills;
@override List<CursusUserSkillModel> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}


/// Create a copy of CursusUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CursusUserModelCopyWith<_CursusUserModel> get copyWith => __$CursusUserModelCopyWithImpl<_CursusUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CursusUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CursusUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level)&&(identical(other.cursus, cursus) || other.cursus == cursus)&&const DeepCollectionEquality().equals(other._skills, _skills));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level,cursus,const DeepCollectionEquality().hash(_skills));

@override
String toString() {
  return 'CursusUserModel(id: $id, level: $level, cursus: $cursus, skills: $skills)';
}


}

/// @nodoc
abstract mixin class _$CursusUserModelCopyWith<$Res> implements $CursusUserModelCopyWith<$Res> {
  factory _$CursusUserModelCopyWith(_CursusUserModel value, $Res Function(_CursusUserModel) _then) = __$CursusUserModelCopyWithImpl;
@override @useResult
$Res call({
 int id, double level, CursusModel cursus, List<CursusUserSkillModel> skills
});


@override $CursusModelCopyWith<$Res> get cursus;

}
/// @nodoc
class __$CursusUserModelCopyWithImpl<$Res>
    implements _$CursusUserModelCopyWith<$Res> {
  __$CursusUserModelCopyWithImpl(this._self, this._then);

  final _CursusUserModel _self;
  final $Res Function(_CursusUserModel) _then;

/// Create a copy of CursusUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? level = null,Object? cursus = null,Object? skills = null,}) {
  return _then(_CursusUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as double,cursus: null == cursus ? _self.cursus : cursus // ignore: cast_nullable_to_non_nullable
as CursusModel,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<CursusUserSkillModel>,
  ));
}

/// Create a copy of CursusUserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursusModelCopyWith<$Res> get cursus {
  
  return $CursusModelCopyWith<$Res>(_self.cursus, (value) {
    return _then(_self.copyWith(cursus: value));
  });
}
}


/// @nodoc
mixin _$CursusUserSkillModel {

 int get id; String get name; double get level;
/// Create a copy of CursusUserSkillModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CursusUserSkillModelCopyWith<CursusUserSkillModel> get copyWith => _$CursusUserSkillModelCopyWithImpl<CursusUserSkillModel>(this as CursusUserSkillModel, _$identity);

  /// Serializes this CursusUserSkillModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CursusUserSkillModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,level);

@override
String toString() {
  return 'CursusUserSkillModel(id: $id, name: $name, level: $level)';
}


}

/// @nodoc
abstract mixin class $CursusUserSkillModelCopyWith<$Res>  {
  factory $CursusUserSkillModelCopyWith(CursusUserSkillModel value, $Res Function(CursusUserSkillModel) _then) = _$CursusUserSkillModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, double level
});




}
/// @nodoc
class _$CursusUserSkillModelCopyWithImpl<$Res>
    implements $CursusUserSkillModelCopyWith<$Res> {
  _$CursusUserSkillModelCopyWithImpl(this._self, this._then);

  final CursusUserSkillModel _self;
  final $Res Function(CursusUserSkillModel) _then;

/// Create a copy of CursusUserSkillModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? level = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CursusUserSkillModel].
extension CursusUserSkillModelPatterns on CursusUserSkillModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CursusUserSkillModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CursusUserSkillModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CursusUserSkillModel value)  $default,){
final _that = this;
switch (_that) {
case _CursusUserSkillModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CursusUserSkillModel value)?  $default,){
final _that = this;
switch (_that) {
case _CursusUserSkillModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CursusUserSkillModel() when $default != null:
return $default(_that.id,_that.name,_that.level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double level)  $default,) {final _that = this;
switch (_that) {
case _CursusUserSkillModel():
return $default(_that.id,_that.name,_that.level);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double level)?  $default,) {final _that = this;
switch (_that) {
case _CursusUserSkillModel() when $default != null:
return $default(_that.id,_that.name,_that.level);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CursusUserSkillModel implements CursusUserSkillModel {
  const _CursusUserSkillModel({required this.id, required this.name, required this.level});
  factory _CursusUserSkillModel.fromJson(Map<String, dynamic> json) => _$CursusUserSkillModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  double level;

/// Create a copy of CursusUserSkillModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CursusUserSkillModelCopyWith<_CursusUserSkillModel> get copyWith => __$CursusUserSkillModelCopyWithImpl<_CursusUserSkillModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CursusUserSkillModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CursusUserSkillModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,level);

@override
String toString() {
  return 'CursusUserSkillModel(id: $id, name: $name, level: $level)';
}


}

/// @nodoc
abstract mixin class _$CursusUserSkillModelCopyWith<$Res> implements $CursusUserSkillModelCopyWith<$Res> {
  factory _$CursusUserSkillModelCopyWith(_CursusUserSkillModel value, $Res Function(_CursusUserSkillModel) _then) = __$CursusUserSkillModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double level
});




}
/// @nodoc
class __$CursusUserSkillModelCopyWithImpl<$Res>
    implements _$CursusUserSkillModelCopyWith<$Res> {
  __$CursusUserSkillModelCopyWithImpl(this._self, this._then);

  final _CursusUserSkillModel _self;
  final $Res Function(_CursusUserSkillModel) _then;

/// Create a copy of CursusUserSkillModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? level = null,}) {
  return _then(_CursusUserSkillModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CursusModel {

 int get id; String get name; String get slug;
/// Create a copy of CursusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CursusModelCopyWith<CursusModel> get copyWith => _$CursusModelCopyWithImpl<CursusModel>(this as CursusModel, _$identity);

  /// Serializes this CursusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CursusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'CursusModel(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class $CursusModelCopyWith<$Res>  {
  factory $CursusModelCopyWith(CursusModel value, $Res Function(CursusModel) _then) = _$CursusModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug
});




}
/// @nodoc
class _$CursusModelCopyWithImpl<$Res>
    implements $CursusModelCopyWith<$Res> {
  _$CursusModelCopyWithImpl(this._self, this._then);

  final CursusModel _self;
  final $Res Function(CursusModel) _then;

/// Create a copy of CursusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CursusModel].
extension CursusModelPatterns on CursusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CursusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CursusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CursusModel value)  $default,){
final _that = this;
switch (_that) {
case _CursusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CursusModel value)?  $default,){
final _that = this;
switch (_that) {
case _CursusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CursusModel() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug)  $default,) {final _that = this;
switch (_that) {
case _CursusModel():
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug)?  $default,) {final _that = this;
switch (_that) {
case _CursusModel() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CursusModel implements CursusModel {
  const _CursusModel({required this.id, required this.name, required this.slug});
  factory _CursusModel.fromJson(Map<String, dynamic> json) => _$CursusModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String slug;

/// Create a copy of CursusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CursusModelCopyWith<_CursusModel> get copyWith => __$CursusModelCopyWithImpl<_CursusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CursusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CursusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'CursusModel(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$CursusModelCopyWith<$Res> implements $CursusModelCopyWith<$Res> {
  factory _$CursusModelCopyWith(_CursusModel value, $Res Function(_CursusModel) _then) = __$CursusModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug
});




}
/// @nodoc
class __$CursusModelCopyWithImpl<$Res>
    implements _$CursusModelCopyWith<$Res> {
  __$CursusModelCopyWithImpl(this._self, this._then);

  final _CursusModel _self;
  final $Res Function(_CursusModel) _then;

/// Create a copy of CursusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,}) {
  return _then(_CursusModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
