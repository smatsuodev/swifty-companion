// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProjectUserModel _$ProjectUserModelFromJson(Map<String, dynamic> json) =>
    _ProjectUserModel(
      id: (json['id'] as num).toInt(),
      finalMark: (json['final_mark'] as num?)?.toInt(),
      status: $enumDecode(
        _$ProjectStatusEnumMap,
        json['status'],
        unknownValue: ProjectStatus._NOT_SUPPORTED,
      ),
      validated: json['validated?'] as bool?,
      project: ProjectModel.fromJson(json['project'] as Map<String, dynamic>),
      cursusIds: (json['cursus_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ProjectUserModelToJson(_ProjectUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'final_mark': instance.finalMark,
      'status': _$ProjectStatusEnumMap[instance.status]!,
      'validated?': instance.validated,
      'project': instance.project,
      'cursus_ids': instance.cursusIds,
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$ProjectStatusEnumMap = {
  ProjectStatus.finished: 'finished',
  ProjectStatus.inProgress: 'in_progress',
  ProjectStatus.waitingForCorrection: 'waiting_for_correction',
  ProjectStatus.searchingForGroup: 'searching_a_group',
  ProjectStatus.creatingGroup: 'creating_group',
  ProjectStatus._NOT_SUPPORTED: '_NOT_SUPPORTED',
};

_ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) =>
    _ProjectModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$ProjectModelToJson(_ProjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };
