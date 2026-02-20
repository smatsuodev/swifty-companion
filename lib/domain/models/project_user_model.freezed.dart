// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectUserModel {

 int get id;@JsonKey(name: 'final_mark') int? get finalMark;@JsonKey(unknownEnumValue: ProjectStatus._NOT_SUPPORTED) ProjectStatus get status;@JsonKey(name: 'validated?') bool? get validated; ProjectModel get project;@JsonKey(name: 'cursus_ids') List<int> get cursusIds;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of ProjectUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectUserModelCopyWith<ProjectUserModel> get copyWith => _$ProjectUserModelCopyWithImpl<ProjectUserModel>(this as ProjectUserModel, _$identity);

  /// Serializes this ProjectUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.finalMark, finalMark) || other.finalMark == finalMark)&&(identical(other.status, status) || other.status == status)&&(identical(other.validated, validated) || other.validated == validated)&&(identical(other.project, project) || other.project == project)&&const DeepCollectionEquality().equals(other.cursusIds, cursusIds)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,finalMark,status,validated,project,const DeepCollectionEquality().hash(cursusIds),updatedAt);

@override
String toString() {
  return 'ProjectUserModel(id: $id, finalMark: $finalMark, status: $status, validated: $validated, project: $project, cursusIds: $cursusIds, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProjectUserModelCopyWith<$Res>  {
  factory $ProjectUserModelCopyWith(ProjectUserModel value, $Res Function(ProjectUserModel) _then) = _$ProjectUserModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'final_mark') int? finalMark,@JsonKey(unknownEnumValue: ProjectStatus._NOT_SUPPORTED) ProjectStatus status,@JsonKey(name: 'validated?') bool? validated, ProjectModel project,@JsonKey(name: 'cursus_ids') List<int> cursusIds,@JsonKey(name: 'updated_at') DateTime updatedAt
});


$ProjectModelCopyWith<$Res> get project;

}
/// @nodoc
class _$ProjectUserModelCopyWithImpl<$Res>
    implements $ProjectUserModelCopyWith<$Res> {
  _$ProjectUserModelCopyWithImpl(this._self, this._then);

  final ProjectUserModel _self;
  final $Res Function(ProjectUserModel) _then;

/// Create a copy of ProjectUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? finalMark = freezed,Object? status = null,Object? validated = freezed,Object? project = null,Object? cursusIds = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,finalMark: freezed == finalMark ? _self.finalMark : finalMark // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProjectStatus,validated: freezed == validated ? _self.validated : validated // ignore: cast_nullable_to_non_nullable
as bool?,project: null == project ? _self.project : project // ignore: cast_nullable_to_non_nullable
as ProjectModel,cursusIds: null == cursusIds ? _self.cursusIds : cursusIds // ignore: cast_nullable_to_non_nullable
as List<int>,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ProjectUserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectModelCopyWith<$Res> get project {
  
  return $ProjectModelCopyWith<$Res>(_self.project, (value) {
    return _then(_self.copyWith(project: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProjectUserModel].
extension ProjectUserModelPatterns on ProjectUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectUserModel value)  $default,){
final _that = this;
switch (_that) {
case _ProjectUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'final_mark')  int? finalMark, @JsonKey(unknownEnumValue: ProjectStatus._NOT_SUPPORTED)  ProjectStatus status, @JsonKey(name: 'validated?')  bool? validated,  ProjectModel project, @JsonKey(name: 'cursus_ids')  List<int> cursusIds, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectUserModel() when $default != null:
return $default(_that.id,_that.finalMark,_that.status,_that.validated,_that.project,_that.cursusIds,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'final_mark')  int? finalMark, @JsonKey(unknownEnumValue: ProjectStatus._NOT_SUPPORTED)  ProjectStatus status, @JsonKey(name: 'validated?')  bool? validated,  ProjectModel project, @JsonKey(name: 'cursus_ids')  List<int> cursusIds, @JsonKey(name: 'updated_at')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProjectUserModel():
return $default(_that.id,_that.finalMark,_that.status,_that.validated,_that.project,_that.cursusIds,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'final_mark')  int? finalMark, @JsonKey(unknownEnumValue: ProjectStatus._NOT_SUPPORTED)  ProjectStatus status, @JsonKey(name: 'validated?')  bool? validated,  ProjectModel project, @JsonKey(name: 'cursus_ids')  List<int> cursusIds, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProjectUserModel() when $default != null:
return $default(_that.id,_that.finalMark,_that.status,_that.validated,_that.project,_that.cursusIds,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectUserModel implements ProjectUserModel {
  const _ProjectUserModel({required this.id, @JsonKey(name: 'final_mark') required this.finalMark, @JsonKey(unknownEnumValue: ProjectStatus._NOT_SUPPORTED) required this.status, @JsonKey(name: 'validated?') required this.validated, required this.project, @JsonKey(name: 'cursus_ids') required final  List<int> cursusIds, @JsonKey(name: 'updated_at') required this.updatedAt}): _cursusIds = cursusIds;
  factory _ProjectUserModel.fromJson(Map<String, dynamic> json) => _$ProjectUserModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'final_mark') final  int? finalMark;
@override@JsonKey(unknownEnumValue: ProjectStatus._NOT_SUPPORTED) final  ProjectStatus status;
@override@JsonKey(name: 'validated?') final  bool? validated;
@override final  ProjectModel project;
 final  List<int> _cursusIds;
@override@JsonKey(name: 'cursus_ids') List<int> get cursusIds {
  if (_cursusIds is EqualUnmodifiableListView) return _cursusIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cursusIds);
}

@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of ProjectUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectUserModelCopyWith<_ProjectUserModel> get copyWith => __$ProjectUserModelCopyWithImpl<_ProjectUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.finalMark, finalMark) || other.finalMark == finalMark)&&(identical(other.status, status) || other.status == status)&&(identical(other.validated, validated) || other.validated == validated)&&(identical(other.project, project) || other.project == project)&&const DeepCollectionEquality().equals(other._cursusIds, _cursusIds)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,finalMark,status,validated,project,const DeepCollectionEquality().hash(_cursusIds),updatedAt);

@override
String toString() {
  return 'ProjectUserModel(id: $id, finalMark: $finalMark, status: $status, validated: $validated, project: $project, cursusIds: $cursusIds, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProjectUserModelCopyWith<$Res> implements $ProjectUserModelCopyWith<$Res> {
  factory _$ProjectUserModelCopyWith(_ProjectUserModel value, $Res Function(_ProjectUserModel) _then) = __$ProjectUserModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'final_mark') int? finalMark,@JsonKey(unknownEnumValue: ProjectStatus._NOT_SUPPORTED) ProjectStatus status,@JsonKey(name: 'validated?') bool? validated, ProjectModel project,@JsonKey(name: 'cursus_ids') List<int> cursusIds,@JsonKey(name: 'updated_at') DateTime updatedAt
});


@override $ProjectModelCopyWith<$Res> get project;

}
/// @nodoc
class __$ProjectUserModelCopyWithImpl<$Res>
    implements _$ProjectUserModelCopyWith<$Res> {
  __$ProjectUserModelCopyWithImpl(this._self, this._then);

  final _ProjectUserModel _self;
  final $Res Function(_ProjectUserModel) _then;

/// Create a copy of ProjectUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? finalMark = freezed,Object? status = null,Object? validated = freezed,Object? project = null,Object? cursusIds = null,Object? updatedAt = null,}) {
  return _then(_ProjectUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,finalMark: freezed == finalMark ? _self.finalMark : finalMark // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProjectStatus,validated: freezed == validated ? _self.validated : validated // ignore: cast_nullable_to_non_nullable
as bool?,project: null == project ? _self.project : project // ignore: cast_nullable_to_non_nullable
as ProjectModel,cursusIds: null == cursusIds ? _self._cursusIds : cursusIds // ignore: cast_nullable_to_non_nullable
as List<int>,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ProjectUserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProjectModelCopyWith<$Res> get project {
  
  return $ProjectModelCopyWith<$Res>(_self.project, (value) {
    return _then(_self.copyWith(project: value));
  });
}
}


/// @nodoc
mixin _$ProjectModel {

 int get id; String get name; String get slug;
/// Create a copy of ProjectModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectModelCopyWith<ProjectModel> get copyWith => _$ProjectModelCopyWithImpl<ProjectModel>(this as ProjectModel, _$identity);

  /// Serializes this ProjectModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'ProjectModel(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class $ProjectModelCopyWith<$Res>  {
  factory $ProjectModelCopyWith(ProjectModel value, $Res Function(ProjectModel) _then) = _$ProjectModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug
});




}
/// @nodoc
class _$ProjectModelCopyWithImpl<$Res>
    implements $ProjectModelCopyWith<$Res> {
  _$ProjectModelCopyWithImpl(this._self, this._then);

  final ProjectModel _self;
  final $Res Function(ProjectModel) _then;

/// Create a copy of ProjectModel
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


/// Adds pattern-matching-related methods to [ProjectModel].
extension ProjectModelPatterns on ProjectModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectModel value)  $default,){
final _that = this;
switch (_that) {
case _ProjectModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectModel() when $default != null:
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
case _ProjectModel() when $default != null:
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
case _ProjectModel():
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
case _ProjectModel() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectModel implements ProjectModel {
  const _ProjectModel({required this.id, required this.name, required this.slug});
  factory _ProjectModel.fromJson(Map<String, dynamic> json) => _$ProjectModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String slug;

/// Create a copy of ProjectModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectModelCopyWith<_ProjectModel> get copyWith => __$ProjectModelCopyWithImpl<_ProjectModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'ProjectModel(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$ProjectModelCopyWith<$Res> implements $ProjectModelCopyWith<$Res> {
  factory _$ProjectModelCopyWith(_ProjectModel value, $Res Function(_ProjectModel) _then) = __$ProjectModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug
});




}
/// @nodoc
class __$ProjectModelCopyWithImpl<$Res>
    implements _$ProjectModelCopyWith<$Res> {
  __$ProjectModelCopyWithImpl(this._self, this._then);

  final _ProjectModel _self;
  final $Res Function(_ProjectModel) _then;

/// Create a copy of ProjectModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,}) {
  return _then(_ProjectModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
