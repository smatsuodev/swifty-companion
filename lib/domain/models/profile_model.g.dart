// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      login: json['login'] as String,
      image: ProfileImageModel.fromJson(json['image'] as Map<String, dynamic>),
      cursusUsers: (json['cursus_users'] as List<dynamic>)
          .map((e) => CursusUserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      wallet: (json['wallet'] as num).toInt(),
      correctionPoint: (json['correction_point'] as num).toInt(),
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'image': instance.image.toJson(),
      'cursus_users': instance.cursusUsers.map((e) => e.toJson()).toList(),
      'wallet': instance.wallet,
      'correction_point': instance.correctionPoint,
    };

_ProfileImageModel _$ProfileImageModelFromJson(Map<String, dynamic> json) =>
    _ProfileImageModel(link: json['link'] as String);

Map<String, dynamic> _$ProfileImageModelToJson(_ProfileImageModel instance) =>
    <String, dynamic>{'link': instance.link};
