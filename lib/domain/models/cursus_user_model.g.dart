// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursus_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CursusUserModel _$CursusUserModelFromJson(Map<String, dynamic> json) =>
    _CursusUserModel(
      level: (json['level'] as num).toDouble(),
      cursus: CursusModel.fromJson(json['cursus'] as Map<String, dynamic>),
      skills: (json['skills'] as List<dynamic>)
          .map((e) => CursusUserSkillModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CursusUserModelToJson(_CursusUserModel instance) =>
    <String, dynamic>{
      'level': instance.level,
      'cursus': instance.cursus.toJson(),
      'skills': instance.skills.map((e) => e.toJson()).toList(),
    };

_CursusUserSkillModel _$CursusUserSkillModelFromJson(
  Map<String, dynamic> json,
) => _CursusUserSkillModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  level: (json['level'] as num).toDouble(),
);

Map<String, dynamic> _$CursusUserSkillModelToJson(
  _CursusUserSkillModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'level': instance.level,
};

_CursusModel _$CursusModelFromJson(Map<String, dynamic> json) =>
    _CursusModel(name: json['name'] as String, slug: json['slug'] as String);

Map<String, dynamic> _$CursusModelToJson(_CursusModel instance) =>
    <String, dynamic>{'name': instance.name, 'slug': instance.slug};
