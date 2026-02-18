// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursus_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CursusUserModel _$CursusUserModelFromJson(Map<String, dynamic> json) =>
    _CursusUserModel(
      level: (json['level'] as num).toDouble(),
      cursus: CursusModel.fromJson(json['cursus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CursusUserModelToJson(_CursusUserModel instance) =>
    <String, dynamic>{
      'level': instance.level,
      'cursus': instance.cursus.toJson(),
    };

_CursusModel _$CursusModelFromJson(Map<String, dynamic> json) =>
    _CursusModel(name: json['name'] as String, slug: json['slug'] as String);

Map<String, dynamic> _$CursusModelToJson(_CursusModel instance) =>
    <String, dynamic>{'name': instance.name, 'slug': instance.slug};
