// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coalition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoalitionModelList _$CoalitionModelListFromJson(Map<String, dynamic> json) =>
    _CoalitionModelList(
      coalitions: (json['coalitions'] as List<dynamic>)
          .map((e) => CoalitionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoalitionModelListToJson(_CoalitionModelList instance) =>
    <String, dynamic>{
      'coalitions': instance.coalitions.map((e) => e.toJson()).toList(),
    };

_CoalitionModel _$CoalitionModelFromJson(Map<String, dynamic> json) =>
    _CoalitionModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      color: const ColorFromHexConverter().fromJson(json['color'] as String),
      userId: (json['user_id'] as num).toInt(),
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$CoalitionModelToJson(_CoalitionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'color': const ColorFromHexConverter().toJson(instance.color),
      'user_id': instance.userId,
      'image_url': instance.imageUrl,
    };
